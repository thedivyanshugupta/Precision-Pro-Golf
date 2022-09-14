//
//  GolfView.swift
//  GolferApplication
//
//  Created by Roro on 9/7/22.
//

import SwiftUI

struct GolfView: View {
    var body: some View {

        VStack(spacing: 10) {
            
            Text("WHERE ARE YOU PLAYING?")
                .padding()
                .font(FontConstants.ProximaNovaBold18)
                .foregroundColor(Color.text.t1)

            HStack {
                Text("Avon Fields Golf Course")
                    .padding([.leading, .trailing], 50)
                    .font(FontConstants.ProximaNovaSemibold15)
                    .foregroundColor(Color.text.t1)

                Image("search_icon")
                    .padding(20)
            }
            .background(Color.white.cornerRadius(20).shadow(color: Color.shadow2, radius: 5, x: 0, y: 0))
            
            HStack {
                Spacer()
                
                Image("bluetooth_icon")
                                    
                Text("Devices")
                    .font(FontConstants.ProximaNovaSemibold15)
                    .foregroundColor(Color.text.t5)
// Too many spacers used to set the image and text in left
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            .padding(.top, 10)
            
            HStack {
                Image("recon_hero_render")
                    .frame(width: 84, height: 84)
                    .propotionalFrame(width: 0.13, height: 0.09)
                    .padding()

                VStack {
                    Text(" R1 Smart")
                        .font(FontConstants.ProximaNovaBold18)
                        .foregroundColor(Color.text.t1)

                    Image("battery_not_connected")
                }
                
                VStack {
                    Image("bluetooth_not_connected")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)

                    Text("No Connection")
                        .font(FontConstants.ProximaNovaSemibold12)
                        .foregroundColor(Color.shadow2)
                }
            }
            .padding([.leading, .trailing], 40)
            .background(Color.white.cornerRadius(25).shadow(color: Color.shadow2, radius: 5, x: 0, y: 0))
            .propotionalFrame(width: 0.9, height: 0.15 )

            HStack {
                Image("speaker_stock")
                    .frame(width: 84, height: 84)
                    .propotionalFrame(width: 0.12, height: 0.12)
                    .padding()

                VStack {
                    Text("S1 Smart")
                        .font(FontConstants.ProximaNovaBold18)
                        .foregroundColor(Color.text.t1)

                    Image("battery_not_connected")
                }
                
                VStack {
                    Image("bluetooth_not_connected")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    
                    Text("No Connection")
                        .font(FontConstants.ProximaNovaSemibold12)
                        .foregroundColor(Color.shadow2)

                }
            }
            .padding([.leading, .trailing], 40)
            .background(Color.white.cornerRadius(25).shadow(color: Color.shadow2, radius: 5, x: 0, y: 0))
            .propotionalFrame(width: 0.9, height: 0.15)

            Button("START ROUND") {
                print("\(screenWidth) and \(screenHeight)")
            }
            .padding(20)
            .padding([.leading, .trailing], 90)
            .font(FontConstants.ProximaNovaBold14)
            .background(Color.lightGreen)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

            Spacer()
        }
        .background(Color.black.opacity(0.02))
    }
}


struct GolfView_Previews: PreviewProvider {
    static var previews: some View {
        GolfView()
    }
}
