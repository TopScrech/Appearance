import SwiftUI

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
public struct AppearancePicker: View {
    @Binding private var appearance: Appearance
    
    public init(_ appearance: Binding<Appearance>) {
        _appearance = appearance
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
    @Previewable @State var appearance: Appearance = .dark
    
    List {
        AppearancePicker($appearance)
    }
    .preferredColorScheme(.dark)
}
