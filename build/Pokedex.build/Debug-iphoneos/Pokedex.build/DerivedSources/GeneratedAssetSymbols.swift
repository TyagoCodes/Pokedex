import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "AccentColor" asset catalog color resource.
    static let accent = DeveloperToolsSupport.ColorResource(name: "AccentColor", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "1024" asset catalog image resource.
    static let _1024 = DeveloperToolsSupport.ImageResource(name: "1024", bundle: resourceBundle)

    /// The "114" asset catalog image resource.
    static let _114 = DeveloperToolsSupport.ImageResource(name: "114", bundle: resourceBundle)

    /// The "120" asset catalog image resource.
    static let _120 = DeveloperToolsSupport.ImageResource(name: "120", bundle: resourceBundle)

    /// The "180" asset catalog image resource.
    static let _180 = DeveloperToolsSupport.ImageResource(name: "180", bundle: resourceBundle)

    /// The "29" asset catalog image resource.
    static let _29 = DeveloperToolsSupport.ImageResource(name: "29", bundle: resourceBundle)

    /// The "40" asset catalog image resource.
    static let _40 = DeveloperToolsSupport.ImageResource(name: "40", bundle: resourceBundle)

    /// The "57" asset catalog image resource.
    static let _57 = DeveloperToolsSupport.ImageResource(name: "57", bundle: resourceBundle)

    /// The "58" asset catalog image resource.
    static let _58 = DeveloperToolsSupport.ImageResource(name: "58", bundle: resourceBundle)

    /// The "60" asset catalog image resource.
    static let _60 = DeveloperToolsSupport.ImageResource(name: "60", bundle: resourceBundle)

    /// The "80" asset catalog image resource.
    static let _80 = DeveloperToolsSupport.ImageResource(name: "80", bundle: resourceBundle)

    /// The "87" asset catalog image resource.
    static let _87 = DeveloperToolsSupport.ImageResource(name: "87", bundle: resourceBundle)

    /// The "bg-launch-img" asset catalog image resource.
    static let bgLaunchImg = DeveloperToolsSupport.ImageResource(name: "bg-launch-img", bundle: resourceBundle)

    /// The "pikachuLaunch" asset catalog image resource.
    static let pikachuLaunch = DeveloperToolsSupport.ImageResource(name: "pikachuLaunch", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "AccentColor" asset catalog color.
    static var accent: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .accent)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "AccentColor" asset catalog color.
    static var accent: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .accent)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "1024" asset catalog image.
    static var _1024: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._1024)
#else
        .init()
#endif
    }

    /// The "114" asset catalog image.
    static var _114: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._114)
#else
        .init()
#endif
    }

    /// The "120" asset catalog image.
    static var _120: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._120)
#else
        .init()
#endif
    }

    /// The "180" asset catalog image.
    static var _180: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._180)
#else
        .init()
#endif
    }

    /// The "29" asset catalog image.
    static var _29: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._29)
#else
        .init()
#endif
    }

    /// The "40" asset catalog image.
    static var _40: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._40)
#else
        .init()
#endif
    }

    /// The "57" asset catalog image.
    static var _57: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._57)
#else
        .init()
#endif
    }

    /// The "58" asset catalog image.
    static var _58: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._58)
#else
        .init()
#endif
    }

    /// The "60" asset catalog image.
    static var _60: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._60)
#else
        .init()
#endif
    }

    /// The "80" asset catalog image.
    static var _80: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._80)
#else
        .init()
#endif
    }

    /// The "87" asset catalog image.
    static var _87: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: ._87)
#else
        .init()
#endif
    }

    /// The "bg-launch-img" asset catalog image.
    static var bgLaunchImg: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bgLaunchImg)
#else
        .init()
#endif
    }

    /// The "pikachuLaunch" asset catalog image.
    static var pikachuLaunch: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pikachuLaunch)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "1024" asset catalog image.
    static var _1024: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._1024)
#else
        .init()
#endif
    }

    /// The "114" asset catalog image.
    static var _114: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._114)
#else
        .init()
#endif
    }

    /// The "120" asset catalog image.
    static var _120: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._120)
#else
        .init()
#endif
    }

    /// The "180" asset catalog image.
    static var _180: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._180)
#else
        .init()
#endif
    }

    /// The "29" asset catalog image.
    static var _29: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._29)
#else
        .init()
#endif
    }

    /// The "40" asset catalog image.
    static var _40: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._40)
#else
        .init()
#endif
    }

    /// The "57" asset catalog image.
    static var _57: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._57)
#else
        .init()
#endif
    }

    /// The "58" asset catalog image.
    static var _58: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._58)
#else
        .init()
#endif
    }

    /// The "60" asset catalog image.
    static var _60: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._60)
#else
        .init()
#endif
    }

    /// The "80" asset catalog image.
    static var _80: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._80)
#else
        .init()
#endif
    }

    /// The "87" asset catalog image.
    static var _87: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: ._87)
#else
        .init()
#endif
    }

    /// The "bg-launch-img" asset catalog image.
    static var bgLaunchImg: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bgLaunchImg)
#else
        .init()
#endif
    }

    /// The "pikachuLaunch" asset catalog image.
    static var pikachuLaunch: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pikachuLaunch)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

