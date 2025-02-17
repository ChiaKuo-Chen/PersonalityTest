//
//  Title.swift
//  PersonalityTest
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .font(.system(size: 60))
            .foregroundStyle(Color.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .shadow(color: Color.gray, radius: 0, x:2, y:2)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor(hex: "#cd6133")))
                    .opacity(0.9)
                    .shadow(color: Color(UIColor(hex: "#000000", alpha: 0.8)), radius: 0, x:4, y:4)
            )
        
    }
}
