//
//  ContentView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var onboardingTabs: [TabDetails] = [
        TabDetails(image: "green_logo", title: "Welcome to", text: "View detailed course information, learn club distances, and measure progress so you can Hit More Greens.", index: 1, imageWidth: 0.33, imageHeight: 0.2),
        TabDetails(image: "onboarding_2", title: "View Detailed", text: "Front, center, and back of the green. With 35,000+ golf courses, we’ve got you covered.", index: 2, imageWidth: 0.560, imageHeight: 0.350),
        TabDetails(image: "onboarding_3", title: "Learn Club Distances", text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.", index: 3, imageWidth: 0.602, imageHeight: 0.340),
        TabDetails(image: "onboarding_4", title: "Analyze Progress", text: "See where you’re strong, where you’re weak, and what area you need to improve for lower scores.", index: 4, imageWidth: 0.586, imageHeight: 0.356),
        TabDetails(image: "onboarding_5", title: "Connect a Device", text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.", index: 5, imageWidth: 0.592, imageHeight: 0.352),
    ]
    @State private var showingGolfView = false
    @State var currentIndex = 0
    @State private var currentPage = 1

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(onboardingTabs) { tab in
                    VStack {

                        Image(tab.image)
                            .resizable()
                            .scaledToFit()
                            .propotionalFrame(width: tab.imageWidth, height: tab.imageHeight)
                        
                        Text(tab.title)
                            .font(Font.custom("ProximaNova-Bold", size: 22))
                            .foregroundColor(Color.text.t1)
                            .padding()
                        
                        Text(tab.text)
                            .font(Font.custom("ProximaNova-Semibold", size: 14))
                            .frame(width: 265, height: 53)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.text.t2)
                            .padding()
                        }
                        .tag(tab.index)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
            .onChange(of: currentIndex) { newValue in
                currentPage = newValue
                print("New page: \(newValue)")
            }
            
            HStack {
                ForEach((1...5), id: \.self) { n in
                    Circle()
                        .foregroundColor(currentPage == n ? Color.lightGreen : Color.shadow2)
                       .frame(width: 10, height: 10)
                }
            }
            
            Spacer(minLength: 70)

            Button(action: {
                showingGolfView = true
            }, label: {
                    Text("GET STARTED") })
            .padding(20)
            .padding([.leading, .trailing], 70)
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .background(Color.lightGreen)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

            Text("No Email Required")
                .onTapGesture {
                }
                .font(Font.custom("ProximaNova-SemiboldIt", size: 14))
                .foregroundColor(Color.text.t2)
            
            Button(action: {
                showingGolfView = true
            }, label: {
                    Text("LOG IN").underline()})
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .background(.white)
            .foregroundColor(Color.text.t2)
        }
        .background(Color.white)
        .fullScreenCover(isPresented: $showingGolfView) {
            GolfScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
