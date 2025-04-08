import Darwin

public struct Stopwatch: ~Copyable {
  
  public let startedAt: UInt64
  public let name: StaticString
  
  public init(name: StaticString) {
    self.name = name
    self.startedAt = mach_absolute_time()
  }
  
  public func end() {
    let elapsedMTU = mach_absolute_time() - startedAt
    var timebase = mach_timebase_info()
    if mach_timebase_info(&timebase) == 0 {
      
      let nanos = Double(elapsedMTU) * Double(timebase.numer) / Double(timebase.denom)
      
      print("[Stopwatch] \(name) \(nanos * 0.000_1) μs \(nanos * 0.000_000_1) ms")
    }
  }
  
}
