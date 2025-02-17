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
            Capsule()
                .fill(Color.black)
                .opacity(0.9)
                .frame(width: configuration.isPressed ? 364 : 360 ,
                       height: configuration.isPressed ? 54 : 50 )

            Capsule()
                .fill(Color(UIColor(hex: configuration.isPressed ? "007b29" : "#009432")))
                .opacity(0.9)
                .frame(width: 360, height: 50)
                .shadow(color: Color(UIColor(hex: "#000000", alpha: 0.8)), radius: 0,
                        x: configuration.isPressed ? 0 : 4, y: configuration.isPressed ? 0 : 4)

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
