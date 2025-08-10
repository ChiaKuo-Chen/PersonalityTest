//
//  ChoiceButtonModifier.swift
//  PersonalityTest
//
//  Created by 陳嘉國
//

import SwiftUI

struct ChoiceButtonModifier: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        ZStack {

            // BACKGROUND
            Capsule()
                .fill(Color(UIColor(hex: configuration.isPressed ? "007b29" : "#009432")))
                .opacity(0.9)
                .frame(width: 360, height: 50)
                .shadow(color: Color.black, radius: 0,
                        x: configuration.isPressed ? -2 : 4, y: configuration.isPressed ? -2 : 4)

            // Text
            configuration.label
                .bold()
                .font(.title)
                .foregroundStyle(Color.white)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
                .offset(y: configuration.isPressed ? 2 : .zero)
                .shadow(color: Color.gray,
                        radius: 0, x:2, y: 2)

        }
    }
    
}
