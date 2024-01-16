//
//  ContentView.swift
//  PetHealthTracker
//
//  Team: Albert Heinrichs, Patrizia Neubauer
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var startTrackingIsClicked: Bool = false
    
    var body: some View {
        ZStack {
            Color.secondBackground
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .center, spacing: 10) {
                
                VStack(alignment: .center, spacing: 10){
                        Text("Pet Health Tracker")
                        .font(.system(size: 35, weight: .bold))
                        .padding(10)
                        .overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color.white, lineWidth: 2)
                                    .background(Color.white.opacity(0.2))
                        )
                }
                .foregroundColor(.white)
                .padding(.top, 50)
                
                
                Image("startAppPicture")
                    .resizable()  // Make the image resizable
                    .scaledToFit() // Maintain the image's aspect ratio while fitting it within the frame
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Vollständige Breite des verfügbaren Bereichs
                    .frame(width: UIScreen.main.bounds.width * 0.7) // 70% der Bildschirmbreite
                    .overlay(Circle()
                        .stroke(Color.primaryBackground, lineWidth: 8)
                        .frame(width: UIScreen.main.bounds.width * 0.8) // Anpassen der Größe des Kreises
                        .background(
                            Circle().fill(Color.white.opacity(0.3)) // Ändern Sie die Hintergrundfarbe hier, z.B. in Rot
                        )
                    )

                VStack(alignment: .center, spacing: 10){
                        Text("Keep track of your pet's health records, appointments, etc.")
                        .font(.system(size: 25, weight: .regular))
                }
                .foregroundColor(.white)
                .padding(.bottom, 20)
                
                Spacer()
                
                Button(action: {
                    startTrackingIsClicked.toggle()
                }) {
                    Text("Start tracking")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .bold))
                }
                .fullScreenCover(isPresented: $startTrackingIsClicked, content: {
                    MainView()
                })
                .frame(width: 150, height: 50, alignment: .center)
                .background(Color.primaryBackground)
                .clipShape(RoundedCorner(radius: 35, corners: [.topLeft, .bottomLeft, .bottomRight, .topRight]))
                .padding(.bottom, 40)
            }
        }
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = 0.0
    var corners: UIRectCorner = []
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: .init(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
