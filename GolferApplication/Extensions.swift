//
//  File.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

extension Color {
    
    static let lightGreen = Color("lightGreen")
    static let shadow1 = Color("shadow1")
    static let shadow2 = Color("shadow2")

    static let text = Color.Text()
    struct Text {
        let t1 = Color("textT1")
        let t2 = Color("textT2")
        let t3 = Color("textT3")
        let t4 = Color("textT4")
        let t5 = Color("textT5")
    }
}

extension View {
      func propotionalFrame(width: CGFloat, height: CGFloat, isSquared: Bool = false, alignment: Alignment = .center) -> some View {
        let finalWidth = UIScreen.main.bounds.width * width
        let finalHeight = isSquared ? finalWidth : UIScreen.main.bounds.height * height
        return frame(width: finalWidth, height: finalHeight)
      }
}
