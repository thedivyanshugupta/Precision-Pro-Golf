//
//  ContentView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGolfView = false


    var body: some View {
        VStack {
            
            TabView {
                VStack {
                    Image("green_logo")
                        .resizable()
                        .frame(width: 150, height: 150.3)
                        .padding()

                    Text("Welcome to")
                        .font(Font.custom("ProximaNova-Bold", size: 22))
                        .foregroundColor(Color(hex: "5d5d5d"))
                        .padding()

                    Text("View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .frame(width: 265, height: 53)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hex: "a1a1a1"))
                        .padding()
                }
                
                VStack {
                    Image("onboarding_2")
                        .resizable()
                        .frame(width: 297, height: 331)
//                        .padding()

                    Text("View Detailed")
                        .font(Font.custom("ProximaNova-Bold", size: 22))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Text("Front, center, and back of the green. With 35,000+ golf courses, we’ve got you covered.")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .frame(width: 265, height: 53)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hex: "a1a1a1"))
//                        .padding()
                }
                
                VStack {
                    Image("onboarding_3")
                        .resizable()
                        .frame(width: 321, height: 285)
//                        .padding()

                    Text("Learn Club Distances")
                        .font(Font.custom("ProximaNova-Bold", size: 22))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .frame(width: 265, height: 53)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hex: "fb6d6d"))
//                        .padding()
                    
                }
                
                VStack {
                    Image("onboarding_4")
                        .resizable()
                        .frame(width: 361, height: 361)
//                        .padding()

                    Text("Analyze Progress")
                        .font(Font.custom("ProximaNova-Bold", size: 22))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Text("See where you’re strong, where you’re weak, and what area you need to improve for lower scores.")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .frame(width: 270, height: 53)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hex: "a1a1a1"))
//                        .padding()
                }
                
                VStack {
                    Image("onboarding_5")
                        .resizable()
                        .frame(width: 313, height: 313)
//                        .padding()

                    Text("Connect a Device")
                        .font(Font.custom("ProximaNova-Bold", size: 22))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .frame(width: 265, height: 53)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hex: "fb6d6d"))
//                        .padding()
                }
            }
           .tabViewStyle(.page)
           .indexViewStyle(.page(backgroundDisplayMode: .always ))
            
            Button(action: {
                showingGolfView = true
            }, label: {
                    Text("GET STARTED") })
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .frame(width: 303, height: 62)
            .background(Color(hex: "7bc146"))
            .foregroundColor(Color(hex: "ffffff"))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text("No Email Required")
//            ProximaNova-Semibold-Italic.otf
                .font(Font.custom("ProximaNova-SemiboldIt", size: 14))
                .foregroundColor(Color(hex: "a1a1a1"))
//                .font(.system(size: 15))
            
            Button(action: {
                showingGolfView = true
            }, label: {
                    Text("LOG IN")            .underline()})
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .background(.white)
            .foregroundColor(Color(hex: "a1a1a1"))
//            .clipShape(Capsule())
        }
        .sheet(isPresented: $showingGolfView) {
            GolfScreenView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
