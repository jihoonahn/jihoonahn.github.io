import Plot

public extension Attribute where Context: HTMLContext {
    static func httpEquiv(_ value: String) -> Attribute {
        Attribute(name: "http-equiv", value: value)
    }
}
