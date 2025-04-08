# Stopwatch

A simple and lightweight stopwatch library for Swift.

## Features

- High-precision timing using `mach_absolute_time()`
- Non-copyable struct design
- Simple and intuitive API
- Microsecond and millisecond precision

## Installation

### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/FluidGroup/swift-stopwatch.git", from: "1.0.0")
]
```

## Usage

```swift
import Stopwatch

// Create a stopwatch with a name
let stopwatch = Stopwatch(name: "My Operation")

// Do some work...

// End the stopwatch and print the elapsed time
stopwatch.end()
```

The output will show the elapsed time in both microseconds (μs) and milliseconds (ms).

## Requirements

- Swift 6.0 or later
