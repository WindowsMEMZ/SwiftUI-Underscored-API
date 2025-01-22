//
//  AddingBackground.swift
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
    @_Concurrency.MainActor @preconcurrency public func _addingBackgroundGroup() -> some SwiftUICore.View
    
    @_Concurrency.MainActor @preconcurrency public func _addingBackgroundLayer() -> some SwiftUICore.View
    
}
#endif

// Official documentation descriptions:
// SwiftUICore.View._addingBackgroundGroup(): Add a background group, affecting the default background color.
// SwiftUICore.View._addingBackgroundLayer(): Add a background layer, affecting the default background color.


// Example:

import SwiftUI

struct AddingBackground: View {
    var body: some View {
        Text("Example")
            ._addingBackgroundGroup()
            ._addingBackgroundLayer()
        // I don't know how to use it.
    }
}

#Preview {
    AddingBackground()
}
