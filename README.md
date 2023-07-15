# html.swift

Tool for generating html from Swift.

Sample page:
```swift
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
            .p("Welcome my friend!"),
            .div(attributes: [.class("row")],
                 .div(attributes: [.class("col col-sm-6")],
                      "Okay"
                 ),
                 .div(attributes: [.class("col col-sm-4")],
                      "Menu"
                 ),
                 .div(attributes: [.class("col col-sm-2")],
                      "Jakis napis"
                 )
            )
        )
    )
)

print(document.prettyRender)
```
