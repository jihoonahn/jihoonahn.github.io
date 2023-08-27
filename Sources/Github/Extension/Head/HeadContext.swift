import Plot

public extension Node where Context == HTML.HeadContext {
    static func refresh(_ content: String) -> Node {
        .meta(
            .httpEquiv("refresh"),
            .content(content)
        )
    }
}
