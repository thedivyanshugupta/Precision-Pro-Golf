//
//  GolfScreenView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

enum Tabs {
    case first
    case second
    case third
    case fourth
    case fifth
}

struct GolfScreenView: View {
    @State private var selectedTab: Tabs = .third
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
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack(spacing: 1) {
            Button {
                selectedTab = .first
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .first ? "stats_selected" : "stats")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer(minLength: 3)

                    if selectedTab == .first {
                        Text("STATS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("STATS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                        
                    }
                }
                .foregroundColor(selectedTab == .first ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .second
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .second ? "clubs_selected" : "clubs")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Spacer(minLength: 8)

                    if selectedTab == .second {
                        Text("CLUBS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("CLUBS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                        
                    }
                }
                .foregroundColor(selectedTab == .second ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .third
            } label: {
                VStack(spacing: -10) {
                    ZStack {

                        Image("golf_tab_background")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 85, height: 85)
                            .offset(y: -17)

                        Image("golf_tab_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
                    
                    Spacer(minLength: 10)

                    if selectedTab == .third {
                        Text(" GOLF")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(-1)
                    }
                    else {
                        Text(" GOLF")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(-1)
                    }
                }
                .foregroundColor(selectedTab == .third ? Color(hex: "7bc146") : Color(hex: "bababa"))
                .offset(y: -17)
            }
            .padding()
            
            Button {
                selectedTab = .fourth
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .fourth ? "record_selected" : "record")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Spacer(minLength: 8)
                    
                    if selectedTab == .fourth {
                        Text("SCORE")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("SCORE")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                }
                .foregroundColor(selectedTab == .fourth ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .fifth
            } label: {
                VStack {
                    Spacer()
                    
                    Image(selectedTab == .fifth ? "device_tab_icon_selected" : "device_tab_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer(minLength: 3)

                    if selectedTab == .fifth {
                        Text("DEVICES")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("DEVICES")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                }
                .foregroundColor(selectedTab == .fifth ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
        }
        .frame(width: 500, height: 60)
        .background((Color(hex: "ffffff")).shadow(color: Color(hex: "0d000000"), radius: 5, x: 0, y: 0))
    }
}

struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}
