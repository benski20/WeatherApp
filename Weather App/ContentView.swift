//
//  ContentView.swift
//  Weather App
//
//  Created by Slivinski, Benjamin on 10/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                Text("Phoenixville, PA")
                    .font(.system(size:32, weight: .medium, design: .default ))
                    .foregroundColor(.white)
                    .padding()
                
                
                VStack (spacing: 9) {
                    Image(systemName: "cloud.sun.fill")
                        . renderingMode(.original)
                        . resizable()
                        . aspectRatio(contentMode: .fit)
                        . frame(width: 180, height: 180)
                    Text("76")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                
                HStack(spacing: 20) {
                    VStack {
                        Text("Mon")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Mon")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Mon")
                            . font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Mon")
                            . font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Mon")
                            . font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Mon")
                            . font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            . renderingMode(.original)
                            . resizable()
                            . aspectRatio(contentMode: .fit)
                            . frame(width: 40, height: 40)
                        Text("70")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    Weatherbutton(title: "Change Day Time", backgroundcolor: Color.white,
                                  textcolor: Color.blue)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
        var dayOfWeek: String
        var imageName: String
        var temperature: Int
        
        var body: some View {
            VStack {
                Text(dayOfWeek)
                    . font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Image(systemName: imageName)
                    . renderingMode(.original)
                    . resizable()
                    . aspectRatio(contentMode: .fit)
                    . frame(width: 40, height: 40)
                Text("\(temperature)°")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(.white)
            }
        }
    }
    
    struct BackgroundView: View {
        var isNight: Bool
        
        var body: some View {
            LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue, isNight ? .gray: .white]), startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
        }
    }
    struct CityTextView: View {
        var cityname: String
        var body: some View {
            Text(cityname)
                .font(.system(size:32, weight: .medium, design: .default ))
                .foregroundColor(.white)
                .padding()
        }
    }
    struct MainWeatherStatusView: View {
        var iconName: String
        var temperature: Int
        
        var body: some View {
            VStack (spacing: 9) {
                Image(systemName: iconName)
                    . renderingMode(.original)
                    . resizable()
                    . aspectRatio(contentMode: .fit)
                    . frame(width: 180, height: 180)
                Text("\(temperature)")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.white)
            }
            
            .padding(.bottom, 40)
        }
    }

struct Weatherbutton: View {
    var title: String
    var backgroundcolor: Color
    var textcolor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundcolor)
            .foregroundColor(textcolor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
