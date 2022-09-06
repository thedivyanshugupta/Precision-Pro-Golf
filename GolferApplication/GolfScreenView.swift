//
//  GolfScreenView.swift
//  GolferApplication
//
//  Created by Roro on 8/22/22.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

enum Tab {
    case first
    case second
    case third
    case fourth
    case fifth
}

struct GolfScreenView: View {
    @State private var selectedTab: Tab = .third
    var body: some View {
        VStack {
            switch selectedTab {
            case .first:
                NavigationView {
                    StatsView()
                }
            case .second:
                NavigationView {
                    ClubsView()
                }
            case .third:
                NavigationView {
                    GolfView()
                }
            case .fourth:
                NavigationView {
                    ScoreView()
                }
            case .fifth:
                NavigationView {
                    DevicesView()
                }
            }
//                .background(Color.black.opacity(0.02))

           CustomTabView(selectedTab: $selectedTab)
                .frame(height: 50)
        }
//        .background(Color.black.opacity(0.2))

    }
}

struct CustomTabView: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack(spacing: 1) {
//            Color(.red)
//                .ignoresSafeArea()
//            Spacer()
            Button {
                selectedTab = .first
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .first ? "stats_selected" : "stats")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer(minLength: 3)

                    if selectedTab == .first {
                        Text("STATS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("STATS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                        
                    }
                    
//                        .foregroundColor(Color(hex: "bababa"))
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .first ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .second
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .second ? "clubs_selected" : "clubs")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Spacer(minLength: 8)

                    
                    if selectedTab == .second {
                        Text("CLUBS")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("CLUBS")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                        
                    }
//                        .foregroundColor(Color(hex: "bababa"))
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .second ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .third
            } label: {
                VStack(spacing: -10) {
                    ZStack {
//                        Circle()
//                            .foregroundColor(.white)
//                            .frame(width: 75, height: 75)
//                            .shadow(radius: 2)
                        Image("golf_tab_background")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 85, height: 85)
                            .offset(y: -17)


//                        golf_tab_background
                        Image("golf_tab_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
                    Spacer(minLength: 10)

                    
                    if selectedTab == .third {
                        Text(" GOLF")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(-1)
                    }
                    else {
                        Text(" GOLF")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                            .padding(-1)
                    }
                        
//                            .foregroundColor(Color(hex: "bababa"))
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .third ? Color(hex: "7bc146") : Color(hex: "7bc146"))
                .offset(y: -17)
            }
            .padding()
//            .clipShape(CShape())
            
            Button {
                selectedTab = .fourth
//                ContentView()
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .fourth ? "record_selected" : "record")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Spacer(minLength: 8)

                    
                    if selectedTab == .fourth {
                        Text("SCORE")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("SCORE")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    
//                        .foregroundColor(Color(hex: "bababa"))
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .fourth ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
            Button {
                selectedTab = .fifth
            } label: {
                VStack {
                    Spacer()
                    Image(selectedTab == .fifth ? "device_tab_icon_selected" : "device_tab_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer(minLength: 3)

                    
                    if selectedTab == .fifth {
                        Text("DEVICES")
                            .underline()
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                    }
                    else {
                        Text("DEVICES")
                            .font(Font.custom("ProximaNova-Semibold", size: 12))
                        
                    }
//                        .foregroundColor(Color(hex: "bababa"))
//                        .foregroundColor(.primary)
                }
                .foregroundColor(selectedTab == .fifth ? Color(hex: "7bc146") : Color(hex: "bababa"))
            }
            .padding()
            
//            Spacer()
        }
        .frame(width: 500, height: 60)
        .background((Color(hex: "ffffff")).shadow(color: Color(hex: "0d000000"), radius: 5, x: 0, y: 0))

//        .shadow(color: .red, radius: 5, x: 0, y: 0)
        
//        .clipShape(CShape())
    }
}

//struct CShape : Shape {
//
//    func path(in rect:CGRect) -> Path {
//
//        return Path { path in
//
//            path.move(to: CGPoint(x: 0, y: 35))
//            path.addLine(to: CGPoint(x: 0, y: rect.height))
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            path.addLine(to: CGPoint(x: rect.width, y: 35))
//
//            path.addArc(center: CGPoint(x: (rect.width / 2) - 8, y: 55), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//
//        }
//    }
//}


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

struct GolfView: View {
    var body: some View {
//        ScrollView {
//        Color(.blue)
//            .ignoresSafeArea()
//            .navigationTitle("Golf")
        VStack(spacing: 20) {
            Text("WHERE ARE YOU PLAYING?")
                .padding()
                .font(Font.custom("ProximaNova-Bold", size: 18))
                .foregroundColor(Color(hex: "5d5d5d"))
            
            HStack {
                Text("Avon Fields Golf Course")
                    .padding([.leading, .trailing], 70)
                    .font(Font.custom("ProximaNova-Semibold", size: 15))
                    .foregroundColor(Color(hex: "5d5d5d"))

                Image("search_icon")
                    .padding(20)
            }
//            .padding()
//            .background(.red)
//            .cornerRadius(15)
            .background(Color.white.cornerRadius(20).shadow(color: Color(hex: "ededed"), radius: 5, x: 0, y: 0))
            .frame(width: .infinity, height: .infinity)
            
            HStack {
                Spacer()
                Image("bluetooth_icon")
//                    .padding()
                
                Text("Devices")
//                    .padding()
                    .font(Font.custom("ProximaNova-Semibold", size: 15))
                    .foregroundColor(Color(hex: "b9b9b9"))

                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            
            HStack {
//                Spacer()

                Image("recon_hero_render")
                    .frame(width: 84, height: 84)
                    .padding()

                VStack {
                    Text("R1 Smart")
                        .font(Font.custom("ProximaNova-Bold", size: 18))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Image("battery_not_connected")
//                        .padding()

                }
                
                VStack {
                    Image("bluetooth_not_connected")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
//                        .padding()

                    Text("No Connection")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))
                        .foregroundColor(Color(hex: "ededed"))
//                        .padding()
                }
            }
            .padding([.leading, .trailing], 40)
            .background(Color.white.cornerRadius(25).shadow(color: Color(hex: "ededed"), radius: 5, x: 0, y: 0))
            .frame(width: .infinity, height: .infinity)
            
            
            HStack {
                Image("speaker_stock")
                    .frame(width: 84, height: 84)
                    .padding()

                VStack {
                    Text("S1 Smart")
                        .font(Font.custom("ProximaNova-Bold", size: 18))
                        .foregroundColor(Color(hex: "5d5d5d"))

//                        .padding()

                    Image("battery_not_connected")
//                        .padding()
                }
                
                VStack {
                    Image("bluetooth_not_connected")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    
//                        .padding()

                    Text("No Connection")
                        .font(Font.custom("ProximaNova-Semibold", size: 12))
                        .foregroundColor(Color(hex: "ededed"))
//                        .padding()

                }
            }
            .padding([.leading, .trailing], 40)
            .background(Color.white.cornerRadius(25).shadow(color: Color(hex: "ededed"), radius: 5, x: 0, y: 0)            )
            .frame(width: .infinity, height: .infinity)
            
//            Spacer(maxLength: 10)
            
            Button("START ROUND") {
//                NewView()
//                ContentView()
            }
            .padding()
            .font(Font.custom("ProximaNova-Bold", size: 14))
            .frame(width: 360, height: 62)
            .background(Color(hex: "7bc146"))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

            Spacer()
            
        }
        .background(Color.black.opacity(0.02))
    }
}
//}

struct ScoreView: View {
    var body: some View {
        Color(.white)
            .ignoresSafeArea()
            .navigationTitle("SCORE")
//        ContentView()
//        VStack {
//            Image("bluetooth_green")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 40, height: 40)
//                .padding()
//            Spacer()
//            Text("")
//                .frame(width: 500, height: 500)
//
//
//    }
//        .ignoresSafeArea(.horizontal)
//        .frame(width: .infinity, height: .infinity)

        .background(Color.black.opacity(0.72))

    }
}

struct DevicesView: View {
    
    var body: some View {
//        ZStack {
        
//            Color(Color.black.opacity(0.05))
//////            Color(Color(hex: "f4f4f4") as! CGColor)
//                    .ignoresSafeArea()
//            .navigationTitle("DEVICES")
                VStack(spacing: 30) {
//                    Spacer()
                    Text("DEVICES")
                        .font(Font.custom("ProximaNova-Bold", size: 18))
//                        .padding()
                    
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
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 140, height: 140)
                            
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
//                    Spacer()
                    Text("")
                        .frame(width: 500, height: 10)
                    Spacer()
                    Spacer()

                }
                .background(Color.black.opacity(0.05))

        
//                .background(Color.black.opacity(0.05))
//                .ignoresSafeArea()
//                .background(Color(hex: "f4f4f4").edgesIgnoringSafeArea(.all))
//            }
//        .background(Color.black.opacity(0.25))
//        .ignoresSafeArea()
    }

//        .background(Color(hex: "f4f4f4"))
}

struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}




//        TabView {
//            NewView()
//                .tabItem {
//                    Label("Everyone", systemImage: "person.3")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Contacted", systemImage: "checkmark.circle")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Uncontacted", systemImage: "questionmark.diamond")
//                }
//
//            NewView()
//                .tabItem {
//                    Label("Me", systemImage: "person.crop.square")
//                }
//            NewView()
//                .tabItem {
//                    Label("ntacted", systemImage: "questionmark")
//                }
//        }
