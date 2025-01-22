//
//  DefaultContext.swift
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
    @_Concurrency.MainActor @preconcurrency public func _defaultContext() -> some SwiftUICore.View
    
}
#endif

// Official documentation description:
// Sets the style context of self to the default context.


// Example:

import SwiftUI

struct DefaultContext: View {
    @State var useDefaultContext = false
    var body: some View {
        List {
            Section {
                Toggle("Use Default Context", isOn: $useDefaultContext)
            }
            Section {
                Text("Example")
                    ._defaultContext()
                // 🤔 I think it should be set to the default style but actually it isn't. Seems like this modifier has no effect.
            }
            .listRowBackground(Color.clear)
        }
    }
}

#Preview {
    DefaultContext()
}
