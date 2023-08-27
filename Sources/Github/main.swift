import Plot

let html = HTML(
    head: [
        .encoding(.utf8),
        .refresh("2;url=https://github.com/Jihoonahn"),
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


try html.render().saveHTML("index.html")
