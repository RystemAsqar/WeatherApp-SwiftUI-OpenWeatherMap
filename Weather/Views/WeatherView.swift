//
//  WeatherView.swift
//  Weather
//
//  Created by Rystem Asqar on 4/13/23.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        Color(hue: 0.688, saturation: 0.9, brightness: 0.714)
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text(weather.name)
                        .bold().font(.system(size: 50)).foregroundColor(Color.white)
                    Spacer()
                    VStack(alignment: .center, content: {
                        Text(weather.main.temp.roundDouble() + "˚")
                            .font(.system(size: 120)).bold().foregroundColor(.white)
                        Text("Weather: \(weather.weather[0].main)")
                            .font(.system(size: 18)).fontWeight(.light).foregroundColor(.white)
                    })
                    
                    Spacer()
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding()
                
            }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
