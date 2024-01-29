//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-29.
//

import SwiftUI


// To use: .modifier(StandardButtonStyle())
struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

// Below would be used to reduce the use of .modifier()
// To use: .standardButtonStyle()
extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
