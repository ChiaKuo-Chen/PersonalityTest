//
//  RarityCardView.swift
//  PersonalityTest
//
import SwiftUI

struct RarityCardView: View {
    
    // MARK: - PROPERTIES
    var animal : Animal
    
    var starCount: Int {
        switch (animal.rarity) {
        case 0..<5 : return 6
        case 5..<10: return 5
        case 10..<15: return 4
        default: return 3
        }
    }
    
    
    // MARK: - BODY
    var body: some View {
        
        HStack() {
            
            Image( (starCount==6) ? "UR5" : "SSR2")
                .resizable()
                .scaledToFit()
                .frame(height: 60)

            HStack(spacing: -40) {
                ForEach(0 ..< starCount , id: \.self) { index in
                    Image("star")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical, 5)
                        .padding(.horizontal, 5)
                        .rotationEffect(.degrees(180))
                        .shadow(color: .black, radius: 0, x: -4, y: -2)
                }
            }
            .frame(height: 70)
            .rotationEffect(.degrees(180))

            Spacer()
                        
        } // HSTACK
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RarityCardView(animal: AnimalData[0])
}

