# Swift_LogTime

```swift

    LogTime.logTimeScope(tag: "Texture2D : \(filePath)") {
    
        // some code
    
    }

```
or

```swift

    print("┌────────────────────────────────────────────")
    print("├")
    let start = logTime
    
    // some code

    print("├")
    print("├    elapsed: \(logTime - start) ms")
    print("└────────────────────────────────────────────")

```