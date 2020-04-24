# Swift LogTime

## 🚀 Getting Started

These instructions will get your copy of the project up and running on your local machine and provide a code example.

### 💻 Installing

Swift LogTime is available for all platforms that support [Swift 5.0](https://swift.org/) and higher and the [Swift Package Manager (SPM)](https://github.com/apple/swift-package-manager).

Extend the following lines in your `Package.swift` file or use it to create a new project.

```swift
// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "YourPackageName",
    dependencies: [
        .package(url: "https://github.com/Guang1234567/Swift_LogTime.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "YourTargetName",
            dependencies: ["LogTime"])
    ]
)

```

### 📝 Code Example

```swift

    import LogTime

    LogTime.logTimeScope(tag: "Texture2D : \(filePath)") {
    
        // some code
    
    }

```
or

```swift

    import LogTime

    print("┌────────────────────────────────────────────")
    print("├")
    let start = LogTime.logTime
    
    // some code

    print("├")
    print("├    elapsed: \(LogTime.logTime - start) ms")
    print("└────────────────────────────────────────────")

```


## 🔏 Licenses

This project is licensed under the 3-Clause BSD License - see the [LICENSE](LICENSE) file for details.