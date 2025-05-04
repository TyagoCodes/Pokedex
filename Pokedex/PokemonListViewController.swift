//
//  PokemonListViewController.swift
//  RocketViewer
//
//  Created by Tyago on 2025-04-27.
//

import UIKit

class PokemonListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var pokemons: [Pokemon] = []
    var filteredPokemons: [Pokemon] = []
    var isSearching = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
        
        fetchPokemons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPokemonDetails",
           let destinationVC = segue.destination as? PokemonDetailsViewController,
           let pokemon = sender as? Pokemon {
            destinationVC.pokemon = pokemon
        }
    }

    func fetchPokemons() {
        //Idéalement limite de 1450 pour afficher tout les pokemons mais ios simulateur ne peut pas handle autant donc je dois limiter a 50 avec offset 0
        //guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=1400&offset=0") else { return }
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=50&offset=0") else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if let error = error {
                print("Error fetching pokemons: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                do {
                    let pokemonResponse = try JSONDecoder().decode(PokemonResponse.self, from: data)
                    
                    DispatchQueue.main.async {
                        self?.pokemons = pokemonResponse.results
                        self?.tableView.reloadData()
                    }
                } catch {
                    print("Error decoding data: \(error.localizedDescription)")
                }
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearching ? filteredPokemons.count : pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath)
        let pokemon = isSearching ? filteredPokemons[indexPath.row] : pokemons[indexPath.row]
        
        cell.textLabel?.text = pokemon.name.capitalized
        cell.imageView?.image = UIImage(named: "placeholderImage")

        if let id = extractId(from: pokemon.url) {
            let spriteURLString = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png"
            
            if let spriteURL = URL(string: spriteURLString) {
                URLSession.shared.dataTask(with: spriteURL) { data, _, _ in
                    if let data = data, let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            cell.imageView?.image = image
                            cell.setNeedsLayout()
                        }
                    }
                }.resume()
            }
        }
        
        return cell
    }

    func extractId(from url: String) -> String? {
        let components = url.split(separator: "/")
        if let id = components.last(where: { !$0.isEmpty }) {
            return String(id)
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPokemon = isSearching ? filteredPokemons[indexPath.row] : pokemons[indexPath.row]
        performSegue(withIdentifier: "ShowPokemonDetails", sender: selectedPokemon)
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            isSearching = false
            tableView.reloadData()
        } else {
            isSearching = true
            filteredPokemons = pokemons.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            tableView.reloadData()
        }
    }
}
