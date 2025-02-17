//
//  AnimalCardView.swift
//  PersonalityTest
//
import SwiftUI

struct AnimalCardView: View {
    
    // MARK: - PROPERTIES
    var animal : Animal

    
    // MARK: - BODY
    var body: some View {
        
        HStack {
            
            VStack {
                HStack {
                    Text("你的內心住著...")
                        .modifier(EndPointTitleModifier())
                    
                    Spacer()
                } // HSTACK
                
                Text(animal.title)
                    .font(.system(size: 45))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 10)
                    .bold()
                    .foregroundStyle(Color.white)
                    .shadow(color: Color.gray, radius: 0, x:2, y:2)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(UIColor(hex: "#cd6133")))
                            .shadow(color: Color.black, radius: 0, x:4, y:4)
                    )
                
                HStack {
                    Spacer()
                    
                    Text(animal.overview)
                        .modifier(EndPointTitleModifier())
                } // HSTACK
                
            } // VSTACK
            
            ZStack {
                
                Circle()
                    .foregroundStyle(Color.black)
                    .offset(x: 4, y: 4)
                
                Image(animal.name)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                Image("foilTexture")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(UIColor(hex: "#cd6133")), lineWidth: 4)
                    )
                
            } // ZSTACK
            
            
        } //HSTACK
        .padding(.horizontal, 6)

    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AnimalCardView(animal: AnimalData[0])
}


