//
//  TopicView.swift
//  PersonalityTest
//

import SwiftUI

struct CheckPointView: View {
    
    // MARK: - PROPERTIES
    var checkPoint : CheckPoint
    
    @State private var goToNextChechPoint : Bool = false
    @State private var destinationNumber : Int = -1

    // MARK: - BODY
    
    var body: some View {
        
        
        NavigationStack {
            VStack {
                
                Spacer()
                
                Text(checkPoint.title)
                    .padding(20)
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .shadow(color: Color.gray, radius: 0, x:2, y:2)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(UIColor(hex: "#cd6133")))
                            .opacity(0.9)
                            .shadow(color: Color.black, radius: 0, x:4, y:4)
                    )
                
                
                Spacer()
                
                
                // Make sre every choice has correspond destination
                if checkPoint.choiceString.count == checkPoint.choiceDestination.count {
                    
                    ForEach(0 ..< checkPoint.choiceString.count , id: \.self) { index in

                        NavigationLink(
                            destination: {
                                goToNextView(checkPoint.choiceDestination[index], checkPoint.gotoEndView[index])
                                    .navigationBarBackButtonHidden(true)
                            },
                            label: {
                                Text(checkPoint.choiceString[index])
                             }
                        ) // NAVIGATIONLINK
                        .buttonStyle(ChoiceButtonModifier())
                    }
                    .padding(.vertical, 10)

                }


                
                
                
            } // VSTACK
            .padding(.bottom, 50)
            .background(
                Image("BackGround")
                    .scaledToFit()
            )
            .edgesIgnoringSafeArea(.all)
        } // NavigationStack
        
    }
    

    
    @ViewBuilder
    func goToNextView(_ destinationNumber: Int, _ goToEndView: Bool) -> some View {
        if (goToEndView == true) {
            EndView(animal: AnimalData[destinationNumber])
        } else {
            CheckPointView(checkPoint: checkPointData[destinationNumber])
        }
    }
    
    

}

// MARK: - PREVIEW
#Preview {
    return CheckPointView(checkPoint: checkPointData[0])
}
