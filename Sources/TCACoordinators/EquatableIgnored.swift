import Foundation

@propertyWrapper
public struct EquatableIgnored<Value>: Equatable {
  public var wrappedValue: Value
  
  public init(wrappedValue: Value) {
    self.wrappedValue = wrappedValue
  }
  
  public static func == (lhs: EquatableIgnored<Value>, rhs: EquatableIgnored<Value>) -> Bool { true }
}
