//
//  EndView.swift
//  PersonalityTest
//

import SwiftUI

struct EndView: View {
    
    // MARK: - PROPERTIES
    var animal : Animal
    @State private var ticketToGoBack : Bool = false
    @State private var goBackToContentView : Bool = false
    
    // MARK: - BODY
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .center, spacing: 20 ) {
                
                HStack {
                    Text("< Go Back")
                        .foregroundStyle(Color(UIColor(hex: "00008B")))
                        .fontWeight(.medium)
                        .padding(.vertical, 10)
                        .offset(x: 20)
                        .offset(y: 20)
                        .opacity(ticketToGoBack ? 1 : 0)
                        .onTapGesture {
                            if ticketToGoBack {
                                goBackToContentView.toggle()
                            }
                        }
                    Spacer()
                }


                AnimalCardView(animal: animal)
                
                RarityCardView(animal: animal)
                
                Text(animal.description)
                    .font(.system(size: 30))
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .shadow(color: Color.gray, radius: 0, x:2, y:2)
                    .padding()
                    .frame(width: 360, height: 180)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(UIColor(hex: "#cd6133")))
                            .shadow(color: Color.black, radius: 0, x:4, y:4)
                    )
                
                FriendCardView(animal: animal)
                
                Text("Presented by Chia-Kuo Chen")
                    .padding(.vertical, 5)
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
                    .offset(y: 30)
                
            } // VSTACK
            .background(
                Image("BackGround")
                    .opacity(0.6)
                
            )
            .ignoresSafeArea(.all)
            .navigationDestination(isPresented: $goBackToContentView){
                ContentView()
                    .navigationBarBackButtonHidden()
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    ticketToGoBack = true
                }
            }
            
        } // NAVIGATIONSTACK

    }

}



// MARK: - PREVIEW
#Preview {
    EndView(animal: AnimalData[0])
}
