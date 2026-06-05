import SwiftUI

@available(iOS 13, macOS 10.15, watchOS 6, *)
public enum Appearance: String, Identifiable, CaseIterable {
    case system, dark, light
    
    public var id: String {
        self.rawValue
    }
    
    public var scheme: ColorScheme? {
        switch self {
        case .dark:   .dark
        case .light:  .light
        case .system: .none
        }
    }
    
    public var localizedName: LocalizedStringKey {
        LocalizedStringKey(localizedNameText)
    }
    
    var localizedNameText: String {
        switch self {
        case .dark:   Self.localized("Dark")
        case .light:  Self.localized("Light")
        case .system: Self.localized("System")
        }
    }
    
    static func localized(_ key: String) -> String {
        NSLocalizedString(key, bundle: .module, comment: "")
    }
}
