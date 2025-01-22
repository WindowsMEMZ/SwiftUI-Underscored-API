//
//  AutomaticPadding.swift
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
    @_Concurrency.MainActor @preconcurrency public func _ignoresAutomaticPadding(_ ignoresPadding: Swift.Bool) -> some SwiftUICore.View
    
    @_Concurrency.MainActor @preconcurrency public func _automaticPadding(_ edgeInsets: SwiftUICore.EdgeInsets? = nil) -> some SwiftUICore.View
    
}
#endif

// Official documentation descriptions:
// SwiftUICore.View._ignoresAutomaticPadding(_:): For use by children in containers to disable the automatic padding that those containers apply.
// SwiftUICore.View._automaticPadding(_:): Applies explicit padding to a view that allows being disabled by that view using _ignoresAutomaticPadding.


// Example:

import SwiftUI

struct AutomaticPadding: View {
    @State var isIgnoringPadding = false
    var body: some View {
        VStack {
            Text("TextTextText")
            Text("TextTextText")
                ._ignoresAutomaticPadding(isIgnoringPadding)
                ._automaticPadding()
            Text("TextTextText")
            Toggle("Ignore Padding", isOn: $isIgnoringPadding)
        }
        .padding()
    }
}

#Preview {
    AutomaticPadding()
}
