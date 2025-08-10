//
//  EndView.swift
//  PersonalityTest
//

import SwiftUI


struct EndView: View {
    
    
    // MARK: - PROPERTIES
    var animal : Animal
    @State private var showingGoBack : Bool = false
    @State private var pulsateAnimation: Bool = false
    @State private var renderedImage = Image(systemName: "photo")
    @Environment(\.displayScale) var displayScale
    @EnvironmentObject var router: Router
    
    // MARK: - BODY
    
    
    var body: some View {
        
        
        ZStack {
            
            CardView(showingAuthor: false, animal: animal)
            
            VStack {
                
                // Button To Homee Page
                if showingGoBack {
                    HStack {
                        Button(action: {
                            router.path.removeAll()
                        }, label: {
                            Image(systemName: "arrowshape.turn.up.backward")
                                .opacity(pulsateAnimation ? 0.0 : 1.0)
                                .animation(.easeInOut(duration: 1.0).repeatForever(),
                                           value: pulsateAnimation)
                                .font(.system(size: 22))
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
                        })
                        Spacer()
                    } // HSTACK
                    .padding()
                    .offset(y: -25)
                }
                
                Spacer()
                
                
                // Button To Share Image
                ShareLink(item: renderedImage,
                          preview: SharePreview("分享你的結果",
                                                image: Image(animal.name)),
                          label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("分享結果")
                    } // HSTACK
                    .font(.system(size: 22))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 10)
                    .bold()
                    .foregroundStyle(Color.white)
                    .shadow(color: Color.gray, radius: 0, x:2, y:2)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(UIColor(hex: "#cd6133")))
                            .shadow(color: Color.black, radius: 0, x:4, y:4)
                            .frame(height: 44)
                    )
                }) // SHARE LINK
                
                
            } // VSTACK
            
            
        } // ZSTACK
        .onAppear{
            render()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                showingGoBack = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    self.pulsateAnimation.toggle()
                }
            }
            

        }
        
    }
    
    // preparation for share image
    @MainActor func render() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let screenSize = windowScene.screen.bounds.size
            let content = CardView(showingAuthor: true, animal: animal)
                .frame(width: screenSize.width, height: screenSize.height)
            let renderer = ImageRenderer(content: content)
            renderer.scale = displayScale
            if let uiImage = renderer.uiImage {
                renderedImage = Image(uiImage: uiImage)
            }
        }
    } // FUNC render
    
}


// What Player actually share.
struct CardView: View {
    
    // MARK: - PROPERTIES
    var showingAuthor: Bool
    var animal : Animal
    
    // MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center, spacing: 20 ) {
            
            CardUpperView(animal: animal)
            
            RarityCardView(animal: animal)
            
            Text(animal.description)
                .font(.system(size: 30))
                .bold()
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
                .opacity(showingAuthor ? 1 : 0)
                .padding(.vertical, 5)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                .fontDesign(.monospaced)
                .offset(y: 35)
            
        } // VSTACK
        .background(
            Image("BackGround")
                .opacity(0.6)
                .ignoresSafeArea(.all)
        )
        
    }
    
}

// MARK: - PREVIEW
#Preview ("EndView") {
    EndView(animal: AnimalData[0])
}

// MARK: - PREVIEW
#Preview ("CardView") {
    CardView(showingAuthor: true, animal: AnimalData[0])
}
