import Foundation
import Dispatch

public final class LogTime {

    public static var enable: Bool = true

    private init() {
    }

    public static var logTime: UInt64 {
        DispatchTime.now().uptimeNanoseconds / 1_000_000
    }

    public static func getElapsedMillis(_ logTime: UInt64) -> UInt64 {
        return self.logTime - logTime
    }

    public static func logTimeScope(tag: String, _ block: () -> Void) {
        if LogTime.enable {
            print("┌────────────────────────────────────────────")
            print("├    \(tag)")
            print("├")
            let start = logTime
            block()
            print("├")
            print("├    elapsed: \(logTime - start) ms")
            print("└────────────────────────────────────────────")
        } else {
            block()
        }
    }
}