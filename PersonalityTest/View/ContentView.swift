//
//  ContentView.swift
//  PersonalityTest
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                Spacer()
                
                Title
                
                Spacer()
                
                NavigationLink(
                    destination: {
                        CheckPointView(checkPoint: checkPointData[0])
                            .navigationBarBackButtonHidden(true)
                    },
                    label: {
                        Text("測測看你是哪種動物？")
                            .scaleEffect(pulsateAnimation ? 1 : 0.9)
                            .animation(.easeInOut(duration: 1.5).repeatForever(),
                                       value: pulsateAnimation)
                    } // LABEL
                ) // NAVIGATIONLINK
                .buttonStyle(ChoiceButtonModifier())
                .padding(.bottom, 100)

            } // VSTACK
            .background(
                Image("BackGround")
                    .scaledToFit()
            )
        } // NavigationStack
        .ignoresSafeArea(.all)
        .onAppear{
            self.pulsateAnimation.toggle()
        }
        


        
    }
    
    // MARK: Title
    
    var Title: some View {
        
        let titleString = ["動", "物", "占", "卜"]
        
        return HStack(spacing: 20) {
            ForEach(0 ..< titleString.count , id: \.self) { index in
                Text(titleString[index])
                    .modifier(TitleModifier())
            }
        } // HSTACK
    }

}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
