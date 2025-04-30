import UIKit

class PokemonDetailsViewController: UIViewController {
    
    var pokemon: Pokemon?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pokemon = pokemon {
            nameLabel.text = pokemon.name.capitalized
            fetchPokemonDetails(from: pokemon.url)
        }
    }
    
    func fetchPokemonDetails(from urlString: String) {
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if let data = data {
                do {
                    let pokemonDetail = try JSONDecoder().decode(PokemonDetails.self, from: data)
                    
                    DispatchQueue.main.async {
                        self?.idLabel.text = "ID: \(pokemonDetail.id)"
                        self?.typeLabel.text = "Type: \(pokemonDetail.types.first?.type.name.capitalized ?? "Unknown")"
                        self?.weightLabel.text = "Weight: \(pokemonDetail.weight) kg"
                        
                        if let imageURLString = pokemonDetail.sprites.front_default,
                           let imageURL = URL(string: imageURLString) {
                            self?.loadImage(from: imageURL)
                        }
                    }
                    
                } catch {
                    print("Error decoding pokemon details: \(error.localizedDescription)")
                }
            }
        }.resume()
    }
    
    func loadImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.imageView.image = image
                }
            }
        }.resume()
    }
}
