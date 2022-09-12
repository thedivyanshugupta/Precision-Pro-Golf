//
//  CustomTabView.swift
//  GolferApplication
//
//  Created by Roro on 9/9/22.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack(spacing: 1) {
            Button {
                selectedTab = .stats
            } label: {
                VStack {
                    
                    Spacer()
                    
                    Image(selectedTab == .stats ? "stats_selected" : "stats")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.leading, 2)
                    
                    Spacer(minLength: 3)

                    if selectedTab == .stats {
                        Text("STATS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.leading, 2)
                    }
                    else {
                        Text("STATS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.leading, 2)
                    }
                }
                .foregroundColor(selectedTab == .stats ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding(.bottom, 8)

            Button {
                selectedTab = .clubs
            } label: {
                VStack {
                    Spacer()
                    
                    Image(selectedTab == .clubs ? "clubs_selected" : "clubs")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .padding(.leading, 18)

                    Spacer(minLength: 8)

                    if selectedTab == .clubs {
                        Text("CLUBS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.leading, 18)
                    }
                    else {
                        Text("CLUBS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.leading, 18)
                    }
                }
                .foregroundColor(selectedTab == .clubs ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding(.bottom, 8)

            Button {
                selectedTab = .golf
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

                    if selectedTab == .golf {
                        Text(" GOLF")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.top, -8)
                    }
                    else {
                        Text(" GOLF")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.top, -8)
                    }
                }
                .foregroundColor(selectedTab == .golf ? Color(hex: "7bc146") : Color(hex: "bababa"))
                .offset(y: -17)
            }
            .padding()
            
            Button {
                selectedTab = .score
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .score ? "record_selected" : "record")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 18)

                    Spacer(minLength: 8)
                    
                    if selectedTab == .score {
                        Text("SCORE")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.trailing, 18)
                    }
                    else {
                        Text("SCORE")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.trailing, 18)
                    }
                }
                .foregroundColor(selectedTab == .score ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding(.bottom, 8)

            Button {
                selectedTab = .devices
            } label: {
                VStack {
                    Spacer()
                    
                    Image(selectedTab == .devices ? "device_tab_icon_selected" : "device_tab_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 2)

                    Spacer(minLength: 3)

                    if selectedTab == .devices {
                        Text("DEVICES")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.trailing, 2)
                    }
                    else {
                        Text("DEVICES")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(.trailing, 2)
                    }
                }
                .foregroundColor(selectedTab == .devices ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding(.bottom, 8)
        }
        .frame(width: 500, height: 60)
        .background((Color(hex: "ffffff")).shadow(color: Color(hex: "0d000000"), radius: 5, x: 0, y: 0))
    }
}