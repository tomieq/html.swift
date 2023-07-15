extension Attribute {
    /// Execute JavaScript when a user leaves an input field.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onblur(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onblur", javascript)
    }

    /// Execute JavaScript when an element is clicked.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onclick(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onclick", javascript)
    }

    /// Execute JavaScript when the user right-clicks on an element with a context menu.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncontextmenu(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncontextmenu", javascript)
    }

    /// Execute JavaScript when copying some text of an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncopy(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncopy", javascript)
    }

    /// Execute JavaScript when cutting some text in an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncut(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncut", javascript)
    }

    /// Execute JavaScript when an element is double-clicked.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondblclick(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondblclick", javascript)
    }

    /// Execute JavaScript when an element is being dragged.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondrag(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondrag", javascript)
    }

    /// Execute JavaScript when the user has finished dragging an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondragend(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondragend", javascript)
    }

    /// Execute JavaScript when a draggable element enters a drop target.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondragenter(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondragenter", javascript)
    }

    /// Execute JavaScript when an element is being dragged over a drop target.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondragover(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondragover", javascript)
    }

    /// Execute JavaScript when the user starts to drag an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondragstart(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondragstart", javascript)
    }

    /// Execute JavaScript when a draggable element is dropped in the element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondrop(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondrop", javascript)
    }

    /// Execute JavaScript when an element gets focus.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onfocus(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onfocus", javascript)
    }

    /// Execute JavaScript when a user is pressing a key.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onkeydown(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onkeydown", javascript)
    }

    /// Execute JavaScript when a user presses a key.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onkeypress(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onkeypress", javascript)
    }

    /// Execute JavaScript when a user releases a key.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onkeyup(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onkeyup", javascript)
    }

    /// Execute JavaScript when pressing a mouse button over an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onmousedown(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmousedown", javascript)
    }

    /// Execute JavaScript when moving the mouse pointer over an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onmousemove(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmousemove", javascript)
    }

    /// Execute JavaScript when moving the mouse pointer out of an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onmouseout(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmouseout", javascript)
    }

    /// Execute JavaScript when moving the mouse pointer over an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onmouseover(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmouseover", javascript)
    }

    /// Execute JavaScript when releasing a mouse button over an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onmouseup(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmouseup", javascript)
    }

    /// Execute JavaScript when pasting some text in an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onpaste(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onpaste", javascript)
    }

    /// Execute JavaScript when an element is being scrolled.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onscroll(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onscroll", javascript)
    }

    /// Execute JavaScript when the user rolls the mouse wheel over an element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onwheel(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onwheel", javascript)
    }
}

extension Attribute where Element == Tag.Body {
    /// Execute JavaScript when a page has started printing.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onafterprint(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onafterprint", javascript)
    }

    /// Execute JavaScript when a page is about to be printed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onbeforeprint(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onbeforeprint", javascript)
    }

    /// Execute JavaScript when the page is about to be unloaded.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onbeforeunload(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onbeforeunload", javascript)
    }

    /// Execute JavaScript when the anchor part has been changed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onhashchange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onhashchange", javascript)
    }

    public static func onmessage(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onmessage", javascript)
    }

    /// Execute JavaScript when the browser starts to work offline.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onoffline(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onoffline", javascript)
    }

    /// Execute JavaScript when the browser starts to work online.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ononline(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ononline", javascript)
    }

    /// Execute JavaScript when the user is navigating away from a webpage.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onpagehide(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onpagehide", javascript)
    }

    /// Execute JavaScript when a user navigates to a webpage.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onpageshow(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onpageshow", javascript)
    }

    public static func onpopstate(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onpopstate", javascript)
    }

    /// Execute JavaScript when the browser window is resized.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onresize(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onresize", javascript)
    }

    public static func onstorage(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onstorage", javascript)
    }

    /// Execute JavaScript when a user unloads the document.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onunload(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onunload", javascript)
    }
}

extension Attribute where Element == Tag.Details {
    /// Execute JavaScript when a `<details>` element is opened or closed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ontoggle(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ontoggle", javascript)
    }
}

extension Attribute where Element == Tag.Form {
    /// Execute JavaScript when a form is reset.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onreset(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onreset", javascript)
    }

    /// Execute JavaScript when a form is submitted.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onsubmit(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onsubmit", javascript)
    }
}

extension Attribute where Element == Tag.Input {
    /// Execute JavaScript when an input field is invalid.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oninvalid(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oninvalid", javascript)
    }

    /// Execute JavaScript when submitting a search.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onsearch(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onsearch", javascript)
    }
}

public protocol HasOnabort {}

extension Tag.Audio: HasOnabort {}
extension Tag.Embed: HasOnabort {}
extension Tag.Img: HasOnabort {}
extension Tag.Object: HasOnabort {}
extension Tag.Video: HasOnabort {}

extension Attribute where Element: HasOnabort {
    /// Execute JavaScript if loading of a resource is aborted.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onabort(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onabort", javascript)
    }
}

extension Attribute where Element == Tag.Track {
    /// Execute JavaScript when the cue changes in a `<track>` element.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncuechange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncuechange", javascript)
    }
}

public protocol HasOncanplay {}

extension Tag.Audio: HasOncanplay {}
extension Tag.Embed: HasOncanplay {}
extension Tag.Object: HasOncanplay {}
extension Tag.Video: HasOncanplay {}

extension Attribute where Element: HasOncanplay {
    /// Execute JavaScript when a resource is ready to start playing.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncanplay(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncanplay", javascript)
    }
}

public protocol HasOncanplaythrough {}

extension Tag.Audio: HasOncanplaythrough {}
extension Tag.Video: HasOncanplaythrough {}

extension Attribute where Element: HasOncanplaythrough {
    /// Execute JavaScript when a resource can be played all the way through, without stopping.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oncanplaythrough(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oncanplaythrough", javascript)
    }
}

public protocol HasOnchange {}

extension Tag.Input: HasOnchange {}
extension Tag.Select: HasOnchange {}
extension Tag.Textarea: HasOnchange {}

extension Attribute where Element: HasOnchange {
    /// Execute JavaScript when a user changes the value of a form control.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onchange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onchange", javascript)
    }
}

public protocol HasOndurationchange {}

extension Tag.Audio: HasOndurationchange {}
extension Tag.Video: HasOndurationchange {}

extension Attribute where Element: HasOndurationchange {
    /// Execute JavaScript when the media is ready to start playing.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ondurationchange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ondurationchange", javascript)
    }
}

public protocol HasOnemptied {}

extension Tag.Audio: HasOnemptied {}
extension Tag.Video: HasOnemptied {}

extension Attribute where Element: HasOnemptied {
    public static func onemptied(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onemptied", javascript)
    }
}

public protocol HasOnended {}

extension Tag.Audio: HasOnended {}
extension Tag.Video: HasOnended {}

extension Attribute where Element: HasOnended {
    /// Execute JavaScript when the media has stopped playing.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onended(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onended", javascript)
    }
}

public protocol HasOnerror {}

extension Tag.Audio: HasOnerror {}
extension Tag.Img: HasOnerror {}
extension Tag.Input: HasOnerror {} // TODO: type="image"
extension Tag.Object: HasOnerror {}
extension Tag.Link: HasOnerror {}
extension Tag.Script: HasOnerror {}
extension Tag.Video: HasOnerror {}

extension Attribute where Element: HasOnerror {
    public static func onerror(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onerror", javascript)
    }
}

public protocol HasOninput {}

extension Tag.Input: HasOninput {}
extension Tag.Textarea: HasOninput {}

extension Attribute where Element: HasOninput {
    /// Execute JavaScript when a user writes something in a text field.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func oninput(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("oninput", javascript)
    }
}

public protocol HasOnload {}

extension Tag.Body: HasOnload {}
extension Tag.Iframe: HasOnload {}
extension Tag.Img: HasOnload {}
extension Tag.Input: HasOnload {} // type="image"
extension Tag.Link: HasOnload {}
extension Tag.Script: HasOnload {}
extension Tag.Style: HasOnload {}

extension Attribute where Element: HasOnload {
    /// Execute JavaScript immediately after a page has been loaded.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onload(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onload", javascript)
    }
}

public protocol HasOnloadeddata {}

extension Tag.Audio: HasOnloadeddata {}
extension Tag.Video: HasOnloadeddata {}

extension Attribute where Element: HasOnloadeddata {
    public static func onloadeddata(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onloadeddata", javascript)
    }
}

public protocol HasOnloadedmetadata {}

extension Tag.Audio: HasOnloadedmetadata {}
extension Tag.Video: HasOnloadedmetadata {}

extension Attribute where Element: HasOnloadedmetadata {
    public static func onloadedmetadata(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onloadedmetadata", javascript)
    }
}

public protocol HasOnloadstart {}

extension Tag.Audio: HasOnloadstart {}
extension Tag.Video: HasOnloadstart {}

extension Attribute where Element: HasOnloadstart {
    public static func onloadstart(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onloadstart", javascript)
    }
}

public protocol HasOnpause {}

extension Tag.Audio: HasOnpause {}
extension Tag.Video: HasOnpause {}

extension Attribute where Element: HasOnpause {
    /// Execute JavaScript when media has been paused.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onpause(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onpause", javascript)
    }
}

public protocol HasOnplay {}

extension Tag.Audio: HasOnplay {}
extension Tag.Video: HasOnplay {}

extension Attribute where Element: HasOnplay {
    /// Execute JavaScript when media has been played.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onplay(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onplay", javascript)
    }
}

public protocol HasOnplaying {}

extension Tag.Audio: HasOnplaying {}
extension Tag.Video: HasOnplaying {}

extension Attribute where Element: HasOnplaying {
    /// Execute JavaScript when media is ready to start after having been paused.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onplaying(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onplaying", javascript)
    }
}

public protocol HasOnprogress {}

extension Tag.Audio: HasOnprogress {}
extension Tag.Video: HasOnprogress {}

extension Attribute where Element: HasOnprogress {
    /// Execute JavaScript when media is downloading.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onprogress(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onprogress", javascript)
    }
}

public protocol HasOnratechange {}

extension Tag.Audio: HasOnratechange {}
extension Tag.Video: HasOnratechange {}

extension Attribute where Element: HasOnratechange {
    /// Execute JavaScript when the playing speed of media is changed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onratechange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onratechange", javascript)
    }
}

public protocol HasOnseeked {}

extension Tag.Audio: HasOnseeked {}
extension Tag.Video: HasOnseeked {}

extension Attribute where Element: HasOnseeked {
    /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onseeked(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onseeked", javascript)
    }
}

public protocol HasOnseeking {}

extension Tag.Audio: HasOnseeking {}
extension Tag.Video: HasOnseeking {}

extension Attribute where Element: HasOnseeking {
    /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onseeking(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onseeking", javascript)
    }
}

public protocol HasOnselect {}

extension Tag.Input: HasOnselect {}
extension Tag.Textarea: HasOnselect {}

extension Attribute where Element: HasOnselect {
    /// Execute JavaScript when some text has been selected.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onselect(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onselect", javascript)
    }
}

public protocol HasOnstalled {}

extension Tag.Audio: HasOnstalled {}
extension Tag.Video: HasOnstalled {}

extension Attribute where Element: HasOnstalled {
    /// Execute JavaScript when the browser is trying to get media data, but data is not available.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onstalled(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onstalled", javascript)
    }
}

public protocol HasOnsuspend {}

extension Tag.Audio: HasOnsuspend {}
extension Tag.Video: HasOnsuspend {}

extension Attribute where Element: HasOnsuspend {
    /// Execute JavaScript when the browser is intentionally not getting media data.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onsuspend(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onsuspend", javascript)
    }
}

public protocol HasOntimeupdate {}

extension Tag.Audio: HasOntimeupdate {}
extension Tag.Video: HasOntimeupdate {}

extension Attribute where Element: HasOntimeupdate {
    /// Execute JavaScript when the current playback position has changed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func ontimeupdate(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("ontimeupdate", javascript)
    }
}

public protocol HasOnvolumechange {}

extension Tag.Audio: HasOnvolumechange {}
extension Tag.Video: HasOnvolumechange {}

extension Attribute where Element: HasOnvolumechange {
    /// Execute JavaScript when the volume of a video has been changed.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onvolumechange(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onvolumechange", javascript)
    }
}

public protocol HasOnwaiting {}

extension Tag.Audio: HasOnwaiting {}
extension Tag.Video: HasOnwaiting {}

extension Attribute where Element: HasOnwaiting {
    /// Execute JavaScript when the media stops because it needs to buffer the next frame.
    ///
    /// - Parameter javascript: JavaScript to execute.
    public static func onwaiting(_ javascript: CustomStringConvertible) -> Attribute {
        return .init("onwaiting", javascript)
    }
}
