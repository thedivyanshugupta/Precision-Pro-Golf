//
//  GolfScreenView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

struct GolfScreenView: View {
    var body: some View {
        TabView {
            NewView()
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }

            NewView()
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }

            NewView()
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }

            NewView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.square")
                }
            NewView()
                .tabItem {
                    Label("ntacted", systemImage: "questionmark")
                }
        }
    }
}

struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}
