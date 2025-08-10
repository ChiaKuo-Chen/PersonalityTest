//
//  ContentView.swift
//  PersonalityTest
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    @EnvironmentObject var router: Router

    // MARK: - BODY
    
    var body: some View {
        
        NavigationStack(path: $router.path){
            
            VStack {
                Spacer()
                
                Title
                
                Spacer()
                
                Button(
                    action: {
                        router.path.append(.checkPoint(checkPoint: checkPointData[0]))
                    },
                    label: {
                        Text("測測看你是哪種動物？")
                            .scaleEffect(pulsateAnimation ? 1 : 0.9)
                            .animation(.easeInOut(duration: 1.5).repeatForever(),
                                       value: pulsateAnimation)
                    } // LABEL
                ) // BUTTON
                .buttonStyle(ChoiceButtonModifier())
                .padding(.bottom, 100)

            } // VSTACK
            .navigationDestination(for: Page.self) { page in
                switch page {
            
                case .checkPoint(let checkPoint):
                    CheckPointView(checkPoint: checkPoint)
                        .environmentObject(router)
                        .navigationBarBackButtonHidden()

                case .end(let animal):
                    EndView(animal: animal)
                        .environmentObject(router)
                        .navigationBarBackButtonHidden()
                }
                
                
            }
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
    
}

// MARK: Title
@ViewBuilder
var Title: some View {
    
    let titleString = ["動", "物", "占", "卜"]
    
    HStack(spacing: 20) {
        ForEach(0 ..< titleString.count , id: \.self) { index in
            Text(titleString[index])
                .modifier(TitleModifier())
        }
    } // HSTACK
}


// MARK: - PREVIEW
#Preview {
    let router = Router()

    ContentView()
        .environmentObject(router)
}
