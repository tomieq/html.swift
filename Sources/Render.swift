
extension Node {
    public var render: String {
        self.render(self)
    }

    /// Renders an array of nodes to an HTML string.
    ///
    /// - Parameter nodes: An array of nodes.
    public func render(_ nodes: [Node]) -> String {
        return nodes.reduce(into: "") { $0.append(render($1)) }
    }

    /// Renders a node to an HTML string.
    ///
    /// - Parameter node: A node.
    public func render(_ node: Node) -> String {
        var rendered = ""
        self.render(node, into: &rendered)
        return rendered
    }

    public func render<T>(_ children: [ChildOf<T>]) -> String {
        return children.reduce(into: "") { $0.append(render($1)) }
    }

    public func render<T>(_ child: ChildOf<T>) -> String {
        return self.render(child.rawValue)
    }

    public func escapeAttributeValue(_ value: String) -> String {
        return value.replacingOccurrences(of: "\"", with: "&quot;")
    }

    public func escapeTextNode(text: String) -> String {
        return text
            .replacingOccurrences(of: "&", with: "&amp;")
            .replacingOccurrences(of: "<", with: "&lt;")
    }

    public func escapeDoctype(_ doctype: String) -> String {
        return doctype.replacingOccurrences(of: ">", with: "&gt;")
    }

    public func escapeHtmlComment(_ comment: String) -> String {
        return comment.replacingOccurrences(of: "-->", with: "--&gt;")
    }

    /// A set of self-closing "void" elements that should not contain child nodes.
    public let voidElements: Set<String> = [
        "area",
        "base",
        "br",
        "col",
        "embed",
        "hr",
        "img",
        "input",
        "link",
        "meta",
        "param",
        "source",
        "track",
        "wbr"
    ]

    private func render(_ node: Node, into output: inout String) {
        switch node {
        case let .comment(string):
            output.append("<!--")
            output.append(self.escapeHtmlComment(string))
            output.append("-->")
        case let .doctype(string):
            output.append("<!doctype ")
            output.append(self.escapeDoctype(string))
            output.append(">")
        case let .element(tag, attribs, children):
            output.append("<")
            output.append(tag)
            self.render(attribs, into: &output)
            output.append(">")
            if !children.isEmpty || !self.voidElements.contains(tag) {
                output.append(self.render(children))
                output.append("</")
                output.append(tag)
                output.append(">")
            }
        case let .fragment(children):
            output.append(self.render(children))
        case let .text(string):
            output.append(self.escapeTextNode(text: string))
        case let .raw(string):
            output.append(string)
        }
    }

    private func render(_ attribs: [(String, String?)], into output: inout String) {
        self.mergeAttributes(attribs, mergable: ["class", "style"])
            .forEach { key, value in
                guard let value = value else { return }
                output.append(" ")
                output.append(key)
                if !value.isEmpty {
                    output.append("=\"")
                    output.append(escapeAttributeValue(value))
                    output.append("\"")
                }
            }
    }

    func mergeAttributes(_ attribs: [(String, String?)], mergable: [String]) -> [(String, String?)] {
        var attributes = attribs
        for attribute in mergable {
            let classAttr = attributes.filter{ $0.0 == attribute }
            if !classAttr.isEmpty {
                let mergedValue = classAttr.compactMap { $0.1 }.joined(separator: " ")
                attributes = attributes.filter{ $0.0 != attribute }
                attributes.append((attribute, mergedValue))
            }
        }
        return attributes
    }
}
