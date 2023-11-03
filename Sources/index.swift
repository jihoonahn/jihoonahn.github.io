import Plot
import Core

@main
struct Index {
    static var html: HTML {
        HTML(
            head: [
                .encoding(.utf8),
                .meta(
                    .attribute(named: "http-equiv", value: "refresh"),
                    .content("2;url=https://github.com/jihoonahn")
                ),
                .script(
                    .attribute(named: "type", value: "text/javascript"),
                    .text("""
                    location.href = 'https://github.com/jihoonahn';
                    """)
                )
            ]
        ) {
            Paragraph {
                Text("The index of Jihoonahn Github repositories.")
            }
        }
    }
    /// Start Index
    static func main() async throws {
        try html
            .render()
            .saveHTML("index.html")
    }
}
