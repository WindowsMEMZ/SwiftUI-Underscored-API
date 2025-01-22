//
//  OnBindingChange.swift
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
    @inlinable @_Concurrency.MainActor @preconcurrency public func _onBindingChange<Value>(_ binding: SwiftUICore.Binding<Value>, perform action: @escaping (Value) -> Swift.Void) -> some SwiftUICore.View where Value : Swift.Equatable {
        return modifier(_BindingActionModifier(
            binding: binding, action: action))
    }
    
}
#endif

// Official documentation descriptions:
// Adds an action to perform when the specified binding’s value changes.
// - Parameters
//   binding: The binding to monitor for value changes.
//   action: The action to perform when the binding’s value changes. The action closure passes the new value as its parameter.
// - Return Value
//   A view that triggers action when the value for binding changes.


// Example:

import SwiftUI

struct OnBindingChange: View {
    @State var binding = false
    var body: some View {
        Toggle("Change Binding", isOn: $binding)
            .padding()
            ._onBindingChange($binding) { value in
                print(value)
            }
    }
}

#Preview {
    OnBindingChange()
}
