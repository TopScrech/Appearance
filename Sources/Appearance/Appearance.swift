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
        switch self {
        case .dark:   "Dark"
        case .light:  "Light"
        case .system: "System"
        }
    }
}
