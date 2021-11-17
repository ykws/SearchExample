# iOS Search Example

[![Xcode - Build and Analyze](https://github.com/ykws/SearchExample/actions/workflows/xcode-build.yml/badge.svg)](https://github.com/ykws/SearchExample/actions/workflows/xcode-build.yml)
[![macOS](https://img.shields.io/badge/macOS-BigSur-black)](https://developer.apple.com/macos/)
[![Xcode](https://img.shields.io/badge/Xcode-13.1-blue.svg)](https://developer.apple.com/xcode)

It is an iOS Search Example App that allows you to change the properties of the settings and can check that [UISearchController](https://developer.apple.com/documentation/uikit/uisearchcontroller) indicating wheter the underlying content is obscured during a search.

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
