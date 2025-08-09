//
//  TopicView.swift
//  PersonalityTest
//

import SwiftUI

struct CheckPointView: View {
    
    // MARK: - PROPERTIES
    var checkPoint : CheckPoint

    @EnvironmentObject var router: Router

    // MARK: - BODY
    
    var body: some View {
        
        
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

                        Button(
                            action: {
                                navigate(to: index)
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
        
        
    }
    
    
    // MARK: - FUNCTIONS
    private func navigate(to index: Int) {
        if checkPoint.gotoEndView[index] {
            let animal = AnimalData[checkPoint.choiceDestination[index]]
            router.path.append(.end(animal: animal))
        } else {
            let nextCheckPoint = checkPointData[checkPoint.choiceDestination[index]]
            router.path.append(.checkPoint(checkPoint: nextCheckPoint))
        }
    }

}

#Preview {
    let router = Router()
    CheckPointView(checkPoint: checkPointData[0])
        .environmentObject(router)
}
