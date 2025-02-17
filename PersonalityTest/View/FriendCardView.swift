//
//  FriendCardView.swift
//  PersonalityTest
//
import SwiftUI

struct FriendCardView: View {
    
    // MARK: - PROPERTIES
    var animal : Animal
    
    
    // MARK: - BODY
    var body: some View {
        
        VStack {
            
            Text("動物好朋友")
                .font(.system(size: 30))
                .padding(.horizontal, 6)
                .padding(.vertical, 3)
                .bold()
                .font(.title)
                .foregroundStyle(Color.white)
                .shadow(color: Color.gray, radius: 0, x:2, y:2)
                .frame(width: 360)
            
            
            HStack(alignment: .center, spacing: 5) {
                
                Spacer()
                
                ForEach(animal.friend, id: \.self) { friendIndex in
                    
                    VStack {
                        
                        Image(AnimalData[friendIndex!].name)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(height: 80)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                        )

                        Text(AnimalData[friendIndex!].title)
                            .font(.system(size: 20))
                            .padding(.vertical, 3)
                            .bold()
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .shadow(color: Color.gray, radius: 0, x:2, y:2)
                        
                    } // VSTACK
                    
                    Spacer()
                } // FOREACH
                
            } // HSTACK
            
        } // VSTACK
        .frame(width: 360)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor(hex: "#cd6133")))
                .shadow(color: Color.black, radius: 0, x:4, y:4)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FriendCardView(animal: AnimalData[0])
}

