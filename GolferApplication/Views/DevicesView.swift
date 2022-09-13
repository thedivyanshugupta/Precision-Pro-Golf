//
//  DevicesView.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

struct DevicesView: View {
    @State var devices: [DevicesDetails] = [
        DevicesDetails(image: "recon_hero_render", title: "R1 Smart Rangefinder"),
        DevicesDetails(image: "speaker_stock", title: "  S1 Smart Speaker  ")
    ]
    
    var body: some View {
        
       VStack(spacing: 30) {
           
            Text("DEVICES")
                .font(Font.custom("ProximaNova-Bold", size: 18))
                .foregroundColor(Color.text.t1)
           
           ForEach(devices) { device in

            HStack {

                VStack {
                    Image("bluetooth_green")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                    
                    Spacer()
                }
                .propotionalFrame(width: 0.18, height: 0.3)

                VStack(spacing: 10) {
                    Image(device.image)
                        .resizable()
                        .scaledToFit()

                    Text(device.title)
                        .font(Font.custom("ProximaNova-Bold", size: 16))
                        .foregroundColor(Color.text.t1)

                    
                    Text("Connected")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color.lightGreen)
                    Text("")

                }
                .propotionalFrame(width: 0.48, height: 0.3)

                VStack(spacing: -15) {
                    Text("100%")
                        .font(Font.custom("ProximaNova-Semibold", size: 14))
                        .foregroundColor(Color.lightGreen)
                        .padding()

                    Image("battery_connected")
                    Spacer()
                }
                .propotionalFrame(width: 0.18, height: 0.3)

            }
            .background(Color.white.cornerRadius(25).shadow(color: Color.shadow2, radius: 5, x: 0, y: 0))
            .propotionalFrame(width: 0.9, height: 0.3 )
            }
           
            Text("")
                .frame(width: screenWidth, height: 10)
           
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
