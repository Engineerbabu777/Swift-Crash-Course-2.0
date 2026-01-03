// Swift's defaults are safe by design: internal is the default.

// Syntax:

// public (visible to other modules)
// internal (module-only, default)
// fileprivate (this file)
// private (this scope type/extension)

public struct APIClient {
  public init() {}
  public func request() {}
}

struct Repository {  // internal by default
  fileprivate var cache: [String: String] = [:]
  private mutating func reset() { cache.removeAll() }
}

// internal struct Box {  // whole type is internal
//   public var value: Int  // warning/error: member more visible than type
// }
