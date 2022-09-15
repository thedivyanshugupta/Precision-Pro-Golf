//
//  StatsView.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

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

struct ScoreView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("SCORE")
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
