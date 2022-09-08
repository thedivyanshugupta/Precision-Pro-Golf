//
//  ContentView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    @State var tabs: [Tab] = [
        Tab(image: "green_logo", title: "Welcome to", text: "View detailed course information, learn club distances, and measure progress so you can Hit More Greens.", index: 1),
        Tab(image: "onboarding_2", title: "View Detailed", text: "Front, center, and back of the green. With 35,000+ golf courses, we’ve got you covered.", index: 2),
        Tab(image: "onboarding_3", title: "Learn Club Distances", text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.", index: 3),
        Tab(image: "onboarding_4", title: "Analyze Progress", text: "See where you’re strong, where you’re weak, and what area you need to improve for lower scores.", index: 4),
        Tab(image: "onboarding_5", title: "Connect a Device", text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et.", index: 5),
    ]
    @State private var showingGolfView = false
    @State var currentIndex = 0
    @State private var currentPage = 1

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(tabs) { tab in
                    VStack {
                        Image(tab.image)
                        
                        Text(tab.title)
                            .font(Font.custom("ProximaNova-Bold", size: 22))
                            .foregroundColor(Color(hex: "5d5d5d"))
                            .padding()
                        
                        Text(tab.text)
                            .font(Font.custom("ProximaNova-Semibold", size: 14))
                            .frame(width: 265, height: 53)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(hex: "a1a1a1"))
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
                        .foregroundColor(currentPage == n ? Color(hex: "7bc146") : Color(hex: "ededed"))
                       .frame(width: 10, height: 10)
                }
            }
            Spacer(minLength: 70)
//            Spacer()
//            Spacer()
//            Spacer()
            
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
                .onTapGesture {
                }
                .font(Font.custom("ProximaNova-SemiboldIt", size: 14))
                .foregroundColor(Color(hex: "a1a1a1"))
            
            Button(action: {
                showingGolfView = true
            }, label: {
                    Text("LOG IN").underline()})
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .background(.white)
            .foregroundColor(Color(hex: "a1a1a1"))
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
