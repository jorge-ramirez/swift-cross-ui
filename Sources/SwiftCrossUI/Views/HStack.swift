/// A horizontally oriented container. Similar to a `HStack` in SwiftUI.
public struct HStack<Content: ViewContent>: View {
    public var body: Content

    /// Creates a new HStack.
    public init(@ViewContentBuilder _ content: () -> Content) {
        // TODO: Add spacing property to HStack
        body = content()
    }

    public func asWidget(_ children: Content.Children) -> GtkButtonBox {
        let hStack = GtkButtonBox(orientation: .horizontal)
        for widget in children.widgets {
            hStack.add(widget)
        }
        return hStack
    }
}
