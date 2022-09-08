//
//  DevicesView.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

struct DevicesView: View {
    
    var body: some View {
        
       VStack(spacing: 30) {
           
            Text("DEVICES")
                .font(Font.custom("ProximaNova-Bold", size: 18))
            
            HStack {
                VStack {
                    Image("bluetooth_green")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    Spacer()
                }
                
                VStack(spacing: 10) {
                    Image("recon_hero_render")
                    
                    Text("R1 Smart Rangefinder")
                        .font(Font.custom("ProximaNova-Bold", size: 17))
                    
                    Text("Connected")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color(hex: "7bc146"))
                }
                
                VStack(spacing: -15) {
                    Text("100%")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color(hex: "7bc146"))
                        .padding()

                    Image("battery_connected")
                    Spacer()
                }
            }
            .background(Color.white.cornerRadius(25).shadow(color: Color(hex: "ededed"), radius: 5, x: 0, y: 0))
            .frame(width: 333, height: 260)

            HStack {
                VStack {
                    Image("bluetooth_green")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    Spacer()
                }
                
                VStack(spacing: 10) {
                    Image("speaker_stock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140)
                    
                    Text("S1 Smart Speaker")
                        .font(Font.custom("ProximaNova-Bold", size: 16))

                    Text("Connected")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color(hex: "7bc146"))
                }
                
                VStack(spacing: -15) {
                    
                    Text("100%")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color(hex: "7bc146"))
                        .padding()

                    Image("battery_connected")
                    
                    Spacer()
                }
            }
            .background(Color.white.cornerRadius(25).shadow(color: Color(hex: "ededed"), radius: 5, x: 0, y: 0)            )
            .frame(width: 390, height: 300)
           
            Text("")
                .frame(width: 500, height: 10)
           
            Spacer()
            Spacer()
        }
        .background(Color.black.opacity(0.05))
    }
}


struct DevicesView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesView()
    }
}
