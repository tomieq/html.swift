
let document: Node = .document(
    .html(
        .head(
            .meta(charset: "utf-8"),
            .meta(viewport: .initialScale(1.0)),
            .meta(description: "some description"),
            .meta(author: "tomek"),
            .title("My best page"),
            .link(attributes: [.rel(.icon), .href("icon.png")]),
            .link(attributes: [.rel(.stylesheet), .href("style.css")])
        ),
        .body(
            .h1(attributes: [.class("slim fat"), .class("extra")], "Welcome!"),
            .p("You’ve found our site!"),
            .row(attributes: [.class("fajny")],
                 .col(attributes: [.class("col-sm-6")],
                      "Okay"
                 ),
                 .col(attributes: [.class("col-sm-4")],
                      "Menu"
                 ),
                 .div(attributes: [.class("col col-sm-2")],
                      "Jakis napis"
                 )
            )
        )
    )
)

// print(render(document))
print(document.prettyRender)

// Bootstrap
extension Node {
    static func row(attributes: [Attribute<Tag.Div>] = [], _ content: Node...) -> Node {
        .div(attributes: [.class("row")] + attributes, .fragment(content))
    }

    static func col(attributes: [Attribute<Tag.Div>] = [], _ content: Node...) -> Node {
        .div(attributes: [.class("col")] + attributes, .fragment(content))
    }
}
