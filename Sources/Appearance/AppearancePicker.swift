import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct AppearancePicker: View {
    @AppStorage("saved_appearance") var appearance: Appearance = .system
    
    public init() {
        // Error fix: 'AppearancePicker' initializer is inaccessible due to 'internal' protection level
    }
    
    public var body: some View {
        Section {
            Picker(selection: $appearance) {
                ForEach(Appearance.allCases) {
                    Text($0.localizedName).tag($0)
                }
            } label: {
                Label("Appearance", systemImage: "paintbrush")
            }
        }
    }
}

@available(iOS 17, macOS 14, tvOS 17, watchOS 10, *)
#Preview {
    List {
        AppearancePicker()
    }
    .preferredColorScheme(.dark)
}
