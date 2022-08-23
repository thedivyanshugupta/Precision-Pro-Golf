//
//  Newview.swift
//  Golfer
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

struct NewView: View {
    @State private var searchText = ""
    var body: some View {
        VStack {
            Text("WHERE ARE YOU PLAYING?")
            
            Text("Avon Fields Golf Course")
                .searchable(text: $searchText)
        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
