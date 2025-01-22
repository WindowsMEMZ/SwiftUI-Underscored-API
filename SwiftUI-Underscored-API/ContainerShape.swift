//
//  ContainerShape.swift
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
    @_Concurrency.MainActor @preconcurrency public func _containerShape<T>(_ shape: T) -> some SwiftUICore.View where T : SwiftUICore.InsettableShape
    
}
#endif

// Official documentation description:
// Behaves as containerShape(shape), except that shape will not be used by the implicit ContainerRelativeShape used by the background(_:) and overlay(_:) functions, the default rectangle shape will be used instead.


// Example:

import SwiftUI

struct ContainerShape: View {
    var body: some View {
        VStack {
            
        }
        .containerShape(Capsule())
        ._containerShape(Capsule())
    }
}

#Preview {
    ContainerShape()
}
