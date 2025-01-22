//
//  TightPadding.swift
//  SwiftUI-Underscored-API
//
//  Created by Mark Chan on 2025/1/23.
//

// Definition in swiftinterface file:
#if false
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@_originallyDefinedIn(module: "SwiftUI", iOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", macOS 15.0)
@_originallyDefinedIn(module: "SwiftUI", tvOS 18.0)
@_originallyDefinedIn(module: "SwiftUI", watchOS 11.0)
extension SwiftUICore.View {
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    @_Concurrency.MainActor @preconcurrency public func _tightPadding() -> some SwiftUICore.View
    
}
#endif

// Official documentation description:
// Pads this view along all edges by an amount that is tighter than the usual default value.


// Example:

import SwiftUI

struct TightPadding: View {
    var body: some View {
        VStack {
            Text("Default Padding")
                .padding()
                .background {
                    Color.pink
                }
            Text("Tight Padding")
                ._tightPadding()
                .background {
                    Color.pink
                }
        }
    }
}

#Preview {
    TightPadding()
}
