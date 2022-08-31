//
//  GolfScreenView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

enum Tab {
    case first
    case second
    case third
    case fourth
    case fifth
}

struct GolfScreenView: View {
    @State private var selectedTab: Tab = .third
    var body: some View {
        VStack {
            switch selectedTab {
            case .first:
                NavigationView {
                    StatsView()
                }
            case .second:
                NavigationView {
                    ClubsView()
                }
            case .third:
                NavigationView {
                    GolfView()
                }
            case .fourth:
                NavigationView {
                    ScoreView()
                }
            case .fifth:
                NavigationView {
                    DevicesView()
                }
            }
           CustomTabView(selectedTab: $selectedTab)
                .frame(height: 50)
        }
    }
}

struct CustomTabView: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack {
            Button {
                selectedTab = .first
            } label: {
                VStack {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("STATS")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))
                    
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .first ? .green : .primary)
            }
            .padding()
            
            Button {
                selectedTab = .second
            } label: {
                VStack {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("CLUBS")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))

//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .second ? .green : .primary)
            }
            .padding()
            
            Button {
                selectedTab = .third
            } label: {
                VStack {
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 55, height: 55)
                            .shadow(radius: 2)
                        Image(systemName: "checkmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                        Text("GOLF")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))

//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .third ? .green : .primary)
                .offset(y: -12)
            }
            .padding()
            
            Button {
                selectedTab = .fourth
            } label: {
                VStack {
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("SCORE")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))

//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .fourth ? .green : .primary)
            }
            .padding()
            
            Button {
                selectedTab = .fifth
            } label: {
                VStack {
                    Image(systemName: "triangle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("DEVICES")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))

//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .fifth ? .green : .primary)
            }
            .padding()
            
        }
    }
}

struct StatsView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("STATS")
    }
}

struct ClubsView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("CLUBS")
    }
}

struct GolfView: View {
    var body: some View {
//        Color(.white)
//            .ignoresSafeArea()
//            .navigationTitle("Golf")
        VStack {
            Text("WHERE ARE YOU PLAYING?")
                .padding()
                .font(Font.custom("ProximaNova-Bold", size: 18))
            
            HStack {
                Text("Avon Fields Golf Course")
                    .padding()
                    .font(Font.custom("ProximaNova-Semibold", size: 15))
                
                Image(systemName: "circle")
                    .padding()
            }
//            .padding()
//                .background(.red)
//            .cornerRadius(15)
            .background(Color.white.cornerRadius(15).shadow(color: Color.gray, radius: 5, x: 0, y: 0))
            .frame(width: .infinity, height: .infinity)
            

            
            HStack {
                Spacer()
                Image("bluetooth")
//                    .padding()
                
                Text("Devices")
//                    .padding()
                    .font(Font.custom("ProximaNova-Semibold", size: 15))
                    .foregroundColor(.secondary)

                Spacer()
                Spacer()
                Spacer()
            }
            
            
            HStack {
                Image("recon_hero_render")
                    .frame(width: 84, height: 84)
                    .padding()

                VStack {
                    Text("R1 Smart")
                        .font(Font.custom("ProximaNova-Bold", size: 18))
//                        .padding()

                    Image("battery_not_connected")
//                        .padding()

                }
                VStack {
                    Image("bluetooth_not_connected")
//                        .padding()

                    Text("No Connection")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))
                        .foregroundColor(.secondary)
//                        .padding()
                }
            }
            .background(Color.white.cornerRadius(25).shadow(color: Color.gray, radius: 5, x: 0, y: 0)            )
            .frame(width: .infinity, height: .infinity)
            
            
            HStack {
                Image("speaker_stock")
                    .frame(width: 84, height: 84)
                    .padding()

                VStack {
                    Text("S1 Smart")
                        .font(Font.custom("ProximaNova-Bold", size: 18))
//                        .padding()

                    Image("battery_not_connected")
//                        .padding()
                }
                
                VStack {
                    Image("bluetooth_not_connected")
//                        .padding()

                    Text("No Connection")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))
                        .foregroundColor(.secondary)
//                        .padding()

                }
            }
//            .padding()
            .background(Color.white.cornerRadius(25).shadow(color: Color.gray, radius: 5, x: 0, y: 0)            )
            .frame(width: .infinity, height: .infinity)
            
            
            
            Button("START ROUND") {
                NewView()
            }
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .frame(width: 303, height: 62)
            .background(.green)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

            
        }
    }
}

struct ScoreView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("SCORE")
      
    }
}

struct DevicesView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("DEVICES")
        
    }
}

struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}


//        TabView {
//            NewView()
//                .tabItem {
//                    Label("Everyone", systemImage: "person.3")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Contacted", systemImage: "checkmark.circle")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Uncontacted", systemImage: "questionmark.diamond")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Me", systemImage: "person.crop.square")
//                }
//            NewView()
//                .tabItem {
//                    Label("ntacted", systemImage: "questionmark")
//                }
//        }
