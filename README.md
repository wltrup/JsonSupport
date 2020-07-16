# JsonSupport
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/JsonSupport)
![GitHub](https://img.shields.io/github/license/wltrup/JsonSupport/LICENSE)

## What

**JsonSupport** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above,  defining a few simple functions to perform common operations associated with encoding and decoding **local** JSON files:
```swift
public func jsonDecode <T: Decodable> (fileName: String, in bundle: Bundle = .main) throws -> T?
public func jsonEncode <T: Encodable> (_ instance: T) throws -> Data
public func jsonString <T: Encodable> (for instance: T) throws -> String?
```

## Installation

**JsonSupport** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**JsonSupport** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
