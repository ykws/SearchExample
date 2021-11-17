# iOS Search Example
It is an iOS Search Example App that allows you to change the properties of the settings and can check that UISearchController indicating wheter the underlying content is obscured during a search.

## Properties of the settings
- [obscuresBackgroundDuringPresentation](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618656-obscuresbackgroundduringpresenta)
- [dimsBackgroundDuringPresentation](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618660-dimsbackgroundduringpresentation)

### Priority
dimsBackgroundDuringPresentation > obscuresBackgroundDuringPresentation

## State of the settings
- undefine = default
  - iOS14 and earlier
    - `true`
  - iOS15
    - `false`
- `false`
- `true`
