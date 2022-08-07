//
//  ForecastCard.swift
//  AppWeather
//
//  Created by Анна Тибекина on 06.08.2022.
//

import SwiftUI

struct ForecastScheme: Identifiable {
    var id = UUID().uuidString

    var date: String
    var weather: String
    var tempr: String
}



//struct ForecastCard: View {
//   // var forecast: Forecast
// 
//    
//    var body: some View {
////        var forecastScheme = [
////            ForecastScheme(date: forecast.data[0].datetime, weather: forecast.data[0].weather.weatherDescription, tempr: forecast.data[0].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[1].datetime, weather: forecast.data[1].weather.weatherDescription, tempr: forecast.data[1].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[2].datetime, weather: forecast.data[2].weather.weatherDescription, tempr: forecast.data[2].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[3].datetime, weather: forecast.data[3].weather.weatherDescription, tempr: forecast.data[3].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[4].datetime, weather: forecast.data[4].weather.weatherDescription, tempr: forecast.data[4].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[5].datetime, weather: forecast.data[5].weather.weatherDescription, tempr: forecast.data[5].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[6].datetime, weather: forecast.data[6].weather.weatherDescription, tempr: forecast.data[6].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[7].datetime, weather: forecast.data[7].weather.weatherDescription, tempr: forecast.data[7].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[8].datetime, weather: forecast.data[8].weather.weatherDescription, tempr: forecast.data[8].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[9].datetime, weather: forecast.data[9].weather.weatherDescription, tempr: forecast.data[9].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[10].datetime, weather: forecast.data[10].weather.weatherDescription, tempr: forecast.data[10].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[11].datetime, weather: forecast.data[11].weather.weatherDescription, tempr: forecast.data[11].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[12].datetime, weather: forecast.data[12].weather.weatherDescription, tempr: forecast.data[12].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[13].datetime, weather: forecast.data[13].weather.weatherDescription, tempr: forecast.data[13].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[14].datetime, weather: forecast.data[14].weather.weatherDescription, tempr: forecast.data[14].temp.roundDouble() + "°"),
////            ForecastScheme(date: forecast.data[15].datetime, weather: forecast.data[15].weather.weatherDescription, tempr: forecast.data[15].temp.roundDouble() + "°"),
////
////        ]
//        
////        ScrollView(.vertical, showsIndicators: false) {
////            VStack(spacing: 15) {
////                ForEach(forecastScheme) { scheme in
////                    
////               
////                              HStack {
////                                  Text(scheme.date)
////                                      
////                                  Text(scheme.weather)
////                                      
////                  //                Image(systemName: forecast.data[0].weather.icon)
////                  //                    .foregroundColor(.red)
////                  
////                                  Text(scheme.tempr + "°")
////                                      
////                              }
////                    
////                    .frame(width: .infinity, height: 100)
////                    .background(Color(hue: 0.787, saturation: 0.2, brightness: 0.895))
////                    .foregroundColor(.white)
////                    .cornerRadius(40)
////                    .shadow(color: .white, radius: 5, x: 4, y: 4)
////                              }
////                          }
////                    }
////                }
////            }
////        
//
//
//struct ForecastCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ForecastCard(forecast: previewForecastWeather)
//            .preferredColorScheme(.dark)
//    }
//}
