public struct Config {
    public let indentation: String
    public let newline: String

    public init(indentation: String, newline: String) {
        self.indentation = indentation
        self.newline = newline
    }

    public static let pretty = Config(indentation: "  ", newline: "\n")
}

public func prettyRender(_ nodes: [Node], config: Config = .pretty) -> String {
    return nodes
        .map { debugRender($0, config: config) }
        .joined()
}

public func prettyRender(_ node: Node, config: Config = .pretty) -> String {
    func prettyRenderHelp(_ node: Node, into output: inout String, config: Config, indentation: String) {
        switch node {
        case let .comment(string):
            output.append(indentation)
            output.append("<!-- ")
            output.append(string)
            output.append(" -->")
            output.append(config.newline)
        case let .doctype(string):
            output.append(indentation)
            output.append("<!doctype ")
            output.append(string)
            output.append(">")
            output.append(config.newline)
        case let .element(tag, attrs, children):
            output.append(indentation)
            output.append("<")
            output.append(tag)
            for (k, v) in mergeAttributes(attrs, mergable: ["class", "style"]) {
                guard let v = v else { continue }

                output.append(" ")

                output.append(k)
                guard !v.isEmpty else { continue }
                output.append("=\"\(v)\"")
            }
            output.append(">")
            output.append(config.newline)
            guard !children.isEmpty || !voidElements.contains(tag) else { return }
            prettyRenderHelp(children, into: &output, config: config, indentation: indentation + config.indentation)
            output.append(indentation)
            output.append("</")
            output.append(tag)
            output.append(">")
            output.append(config.newline)
        case let .fragment(children):
            for node in children {
                prettyRenderHelp(node, into: &output, config: config, indentation: indentation)
            }
        case let .raw(string), let .text(string):
            guard !string.isEmpty else { return }
            output.append(indentation)
            output.append(string)
            output.append(config.newline)
        }
    }

    var string = ""
    prettyRenderHelp(node, into: &string, config: config, indentation: "")
    return string
}
