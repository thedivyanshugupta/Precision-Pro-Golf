//
//  CustomTabView.swift
//  GolferApplication
//
//  Created by Roro on 9/9/22.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab: CustomTabs
    var body: some View {
        HStack(spacing: -22) {
            Button {
                selectedTab = .stats
            } label: {
                VStack {

                    Spacer()

                    Image(selectedTab == .stats ? "stats_selected" : "stats")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)

                    Spacer(minLength: 3)

                    if selectedTab == .stats {
                        Text("STATS")
                            .underline()
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                    else {
                        Text("STATS")
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                }
                .foregroundColor(selectedTab == .stats ? Color.lightGreen : Color.text.t5)

            }
            .padding()
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

                    Spacer(minLength: 8)

                    if selectedTab == .clubs {
                        Text("CLUBS")
                            .underline()
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                    else {
                        Text("CLUBS")
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                }
                .foregroundColor(selectedTab == .clubs ? Color.lightGreen : Color.text.t5)
            }
            .padding()
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
                            .font(FontConstants.ProximaNovaSemibold12)
                            .padding(.top, -8)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                    else {
                        Text(" GOLF")
                            .font(FontConstants.ProximaNovaSemibold12)
                            .padding(.top, -8)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                }
                .foregroundColor(selectedTab == .golf ? Color.lightGreen : Color.text.t5)
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

                    Spacer(minLength: 8)

                    if selectedTab == .score {
                        Text("SCORE")
                            .underline()
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                    else {
                        Text("SCORE")
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                }
                .foregroundColor(selectedTab == .score ? Color.lightGreen : Color.text.t5)
            }
            .padding()
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

                    Spacer(minLength: 3)

                    if selectedTab == .devices {
                        Text("DEVICES")
                            .underline()
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                    else {
                        Text("DEVICES")
                            .font(FontConstants.ProximaNovaSemibold12)
                            .propotionalFrame(width: 0.17, height: 0.01)
                    }
                }
                .foregroundColor(selectedTab == .devices ? Color.lightGreen : Color.text.t5)
            }
            .padding()
            .padding(.bottom, 8)
        }
        .padding()
        .padding([.leading,.trailing,.bottom], 10)
        .frame(width: screenWidth, height: 60)
        .background(Color.white.shadow(color: Color.shadow2, radius: 5, x: 0, y: 0))
    }
}
