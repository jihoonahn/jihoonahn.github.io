import Plot
import Core

@main
struct Index {
    /// Index html
    static var html: HTML {
        HTML(
            head: [
                .encoding(.utf8),
                .meta(
                    .attribute(named: "http-equiv", value: "refresh"),
                    .content("2;url=https://github.com/Jihoonahn")
                ),
                .script(
                    .attribute(named: "type", value: "text/javascript"),
                    .text("""
                    location.href = 'https://github.com/Jihoonahn';
                    """)
                )
            ]
        ) {
            Paragraph {
                Text("The index of Jihoonahn Github repositories.")
            }
        }
    }
    /// start main
    static func main() async throws {
        try html
            .render()
            .saveHTML("index.html")
    }
}
