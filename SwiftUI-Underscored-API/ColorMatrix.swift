//
//  ColorMatrix.swift
//  SwiftUI-Underscored-API
//
//  Created by Mark Chan on 2025/1/23.
//

// Definition in swiftinterface file:
#if false
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@_originallyDefinedIn(module: "SwiftUI", iOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", macOS 15.0)
@_originallyDefinedIn(module: "SwiftUI", tvOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", watchOS 11.0)
extension SwiftUICore.View {
    @_Concurrency.MainActor @preconcurrency public func _colorMatrix(_ matrix: SwiftUICore._ColorMatrix) -> some SwiftUICore.View
    
}
#endif

// Related structure:
#if false
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@_originallyDefinedIn(module: "SwiftUI", iOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", macOS 15.0)
@_originallyDefinedIn(module: "SwiftUI", tvOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", watchOS 11.0)
@frozen public struct _ColorMatrix : Swift.Equatable, Swift.Codable {
    public var m11: Swift.Float = 1, m12: Swift.Float = 0, m13: Swift.Float = 0, m14: Swift.Float = 0, m15: Swift.Float = 0
    public var m21: Swift.Float = 0, m22: Swift.Float = 1, m23: Swift.Float = 0, m24: Swift.Float = 0, m25: Swift.Float = 0
    public var m31: Swift.Float = 0, m32: Swift.Float = 0, m33: Swift.Float = 1, m34: Swift.Float = 0, m35: Swift.Float = 0
    public var m41: Swift.Float = 0, m42: Swift.Float = 0, m43: Swift.Float = 0, m44: Swift.Float = 1, m45: Swift.Float = 0
    @inlinable public init() {}
    public init(color: SwiftUICore.Color, in environment: SwiftUICore.EnvironmentValues)
    public static func * (a: SwiftUICore._ColorMatrix, b: SwiftUICore._ColorMatrix) -> SwiftUICore._ColorMatrix
    public func encode(to encoder: any Swift.Encoder) throws
    public init(from decoder: any Swift.Decoder) throws
    public static func == (a: SwiftUICore._ColorMatrix, b: SwiftUICore._ColorMatrix) -> Swift.Bool
}
#endif

// Official documentation description:
// Applies a color matrix to the contents of the view.
// - Parameters
//   matrix: The color matrix to apply.
// - Return Value
//   A view that applies matrix to this view.


// Example:

import SwiftUI

struct ColorMatrix: View {
    var body: some View {
        Text("Example")
            ._colorMatrix(.init())
        // I don't know how to use it.
    }
}

#Preview {
    ColorMatrix()
}
