//
//  CustomTabDetails.swift
//  GolferApplication
//
//  Created by Roro on 9/14/22.
//

import Foundation
import SwiftUI

struct CustomTabDetails: Identifiable, Hashable {
    var id = UUID()
    var imageSelected: String
    var imageNotSelected: String
    var title: String
    var index: Int
    var selectedTab: CustomTabs
}
