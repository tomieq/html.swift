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
## Swift Package Manager

In order to add library to your project, add to your Package.swift:
```swift
// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YourApp",
    dependencies: [
        .package(url: "https://github.com/tomieq/html.swift.git", .branch("master"))
    ],
    targets: [
        ...
    ]
)
```
