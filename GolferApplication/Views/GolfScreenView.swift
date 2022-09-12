//
//  GolfScreenView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

enum Tabs {
    case stats
    case clubs
    case golf
    case score
    case devices
}

struct GolfScreenView: View {
    @State private var selectedTab: Tabs = .golf
    var body: some View {
        VStack {
            switch selectedTab {
                case .stats:
                    NavigationView {
                        StatsView()
                    }
                case .clubs:
                    NavigationView {
                        ClubsView()
                    }
                case .golf:
                    NavigationView {
                        GolfView()
                    }
                case .score:
                    NavigationView {
                        ScoreView()
                    }
                case .devices:
                    NavigationView {
                        DevicesView()
                    }
            }
            CustomTabView(selectedTab: $selectedTab)
                .frame(height: 50)
        }
    }
}


struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}
