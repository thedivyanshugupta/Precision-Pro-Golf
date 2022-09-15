//
//  NewCustomTab.swift
//  GolferApplication
//
//  Created by Roro on 9/14/22.
//

import Foundation
import SwiftUI

struct NewCustomTabView: View {
    @Binding var currentTab: CustomTabs
    @State var customTabs: [CustomTabDetails] = [
        CustomTabDetails(imageSelected: "stats_selected", imageNotSelected: "stats", title: "STATS", index: 1, selectedTab: .stats),
        CustomTabDetails(imageSelected: "clubs_selected", imageNotSelected: "clubs", title: "CLUBS", index: 2, selectedTab: .clubs),
        CustomTabDetails(imageSelected: "golf_tab_icon", imageNotSelected: "golf", title: " GOLF", index: 3, selectedTab: .golf),
        CustomTabDetails(imageSelected: "record_selected", imageNotSelected: "record", title: "SCORE", index: 4, selectedTab: .score),
        CustomTabDetails(imageSelected: "device_tab_icon_selected", imageNotSelected: "device_tab_icon", title: "DEVICES", index: 5, selectedTab: .devices)
        ]

    var body: some View {
        HStack {
            ForEach(customTabs) { tab in
                
                if tab.index != 3 {
                    Button {
                        currentTab = tab.selectedTab
                    } label: {
                        VStack {
                            Image(currentTab == tab.selectedTab ? tab.imageSelected : tab.imageNotSelected)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)

                            Spacer(minLength: 1)

                            Text(tab.title)
                                .underline(currentTab == tab.selectedTab ? true : false)
                                .font(FontConstants.ProximaNovaSemibold12)
                        }
                        .foregroundColor(currentTab == tab.selectedTab ? Color.lightGreen : Color.text.t5)
                    }
                    if tab.index != 5 {
                        Spacer()
                    }
                } else {
                    Button {
                        currentTab = tab.selectedTab
                    } label: {
                        VStack(spacing: -10) {
                            ZStack {
                                Image("golf_tab_background")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85, height: 85)
                                    .offset(y: -17)

                                Image(tab.imageSelected)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 45, height: 45)
                            }

                            Spacer(minLength: 10)

                            Text(tab.title)
                                .underline(currentTab == .golf ? true : false)
                                .font(FontConstants.ProximaNovaSemibold12)
                                .padding(.top, -8)
                                .offset(y: 9)
                        }
                        .foregroundColor(currentTab == .golf ? Color.lightGreen : Color.text.t5)
                        .offset(y: -27)
                    }
                    Spacer()
                }
            }
        }
        .padding()
    }
}
