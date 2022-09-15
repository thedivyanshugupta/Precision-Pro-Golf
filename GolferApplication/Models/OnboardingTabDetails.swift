//
//  Newview.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

struct OnboardingTabDetails: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var index: Int
    var imageWidth: Double
    var imageHeight: Double
}
