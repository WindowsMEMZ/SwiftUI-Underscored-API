//
//  ColorMonochrome.swift
//  SwiftUI-Underscored-API
//
//  Created by Mark Chan on 2025/1/23.
//

// Definition in swiftinterface file:
#if false
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@_originallyDefinedIn(module: "SwiftUI", iOS 14.0)
@_originallyDefinedIn(module: "SwiftUI", macOS 11.0)
@_originallyDefinedIn(module: "SwiftUI", tvOS 14.0)
@_originallyDefinedIn(module: "SwiftUI", watchOS 7.0)
extension SwiftUICore.View {
    @inlinable @_Concurrency.MainActor @preconcurrency public func _colorMonochrome(_ color: SwiftUICore.Color, amount: Swift.Double = 1, bias: Swift.Double = 0) -> some SwiftUICore.View {
        return modifier(_ColorMonochromeEffect(
            color: color, amount: amount, bias: bias))
    }
    
}
#endif

// Official documentation description:
// Applies a color-monochrome effect to the contents of the view.


// Example:

import SwiftUI

struct ColorMonochrome: View {
    var body: some View {
        VStack {
            Image(systemName: "iphone")
                .font(.largeTitle)
            HStack {
                Group {
                    // Note what colors we set for each rectangle and how actually they shows in.
                    Rectangle()
                        .fill(Color.white)
                    Rectangle()
                        .fill(Color.red)
                    Rectangle()
                        .fill(Color.pink)
                    Rectangle()
                        .fill(Color.yellow)
                }
                .frame(width: 50, height: 50)
            }
            
        }
        ._colorMonochrome(.blue, amount: 1, bias: 1)
    }
}

#Preview {
    ColorMonochrome()
}
