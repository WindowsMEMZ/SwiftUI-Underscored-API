//
//  PrintChanges.swift
//  SwiftUI-Underscored-API
//
//  Created by Mark Chan on 2025/1/23.
//

// Definition in swiftinterface file:
#if false
@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension SwiftUICore.View {
  @_Concurrency.MainActor @preconcurrency public static func _printChanges()
}
#endif

// Official documentation description:
// When called within an invocation of body of a view of this type, prints the names of the changed dynamic properties that caused the result of body to need to be refreshed. As well as the physical property names, “@self” is used to mark that the view value itself has changed, and “@identity” to mark that the identity of the view has changed (i.e. that the persistent data associated with the view has been recycled for a new instance of the same type).


// Example:

import SwiftUI

struct PrintChanges: View {
    @State var status = false
    var body: some View {
        let _ = Self._printChanges()
        Toggle("Change View Status", isOn: $status)
            .padding()
        // Check the console after switching the toggle.
    }
}

#Preview {
    PrintChanges()
}
