//
//  EndPointTitleModifier.swift
//  PersonalityTest
//
import SwiftUI

struct EndPointTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .bold()
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .foregroundStyle(Color.white)
            .shadow(color: Color.gray, radius: 0, x:2, y:2)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor(hex: "cd6133")))
                    .opacity(0.9)
                    .shadow(color: Color.black, radius: 0, x:4, y:4)
            )

                
    }
}
