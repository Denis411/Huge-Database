//
//  Modifiers.swift
//  Huge Database
//
//  Created by Programmer on 6/13/21.
//

import SwiftUI
// MARK: - HeaderOne

struct HeaderOne: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.top, 10)
            .font(.system(size: 25, weight: .bold, design: .serif))
            .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            
    }
}

extension View {
    func header() -> some View{
        self.modifier(HeaderOne())
    }
}
