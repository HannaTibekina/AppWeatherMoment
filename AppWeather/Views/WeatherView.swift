//
//  WeatherView.swift
//  AppWeather
//
//  Created by Анна Тибекина on 05.08.2022.
//

import SwiftUI

struct WeatherView: View {
    var weather: Welcome
    var forecast: Forecast
    
    
    var body: some View {
        ZStack{
            VStack {
                Text(weather.name)
                    .font(.largeTitle)

                VStack {
                    Text(weather.main.temp.roundDouble() + "°")
                        .font(.system(size: 96, weight: .thin))
                    Text(weather.weather[0].main)
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.secondary)
                    
                    Text("Feels like \(weather.main.feelsLike.roundDouble())°")
                        .font(.title3.weight(.semibold))
                    
                }
                
             
                Spacer()
            }
            .padding(.top, 51)
        }
    
    }
    }

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previeWeather, forecast: previewForecastWeather)
            .preferredColorScheme(.dark)
    }
}
