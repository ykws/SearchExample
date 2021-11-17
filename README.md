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

## Screen recordings
### iOS15

https://user-images.githubusercontent.com/5770480/142238198-7ffdce35-78bd-4627-85ab-79e496048774.mp4

### iOS14

https://user-images.githubusercontent.com/5770480/142238266-ac108538-1b54-47b3-aa51-e954635fa6ff.mp4

## References
- [iOS15 で UISearchController を利用する時の注意点](https://zenn.dev/ykws/articles/ios15-search-controller)
- [UISearchControllerのインクリメンタルサーチをよりインクリメンタルにする](https://qiita.com/temoki/items/a2453995615752f8f52d)
