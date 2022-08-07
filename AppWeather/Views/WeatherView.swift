//
//  WeatherView.swift
//  AppWeather
//
//  Created by Анна Тибекина on 05.08.2022.
//

import SwiftUI



struct WeatherView: View {
    var weather: Welcome
//    var forecast: Forecast
    
    
    
    var body: some View {
        ZStack{
            Image("back")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                
            VStack {
            
                Text(weather.name)
                    .font(.largeTitle)
                    .padding()
                    
                VStack {
                    Text(Date().formatted(.dateTime.month().day().hour().minute()))
                        .fontWeight(.semibold)
                    Text(weather.main.temp.roundDouble() + "°")
                        .font(.system(size: 95, weight: .thin))
                    Text(weather.weather[0].main)
                        .font(.title3.weight(.semibold))
                }
                
             
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.top, 51)
           
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        WeathereVisual(logo: "thermometer.sun", name: "Max temp", value: weather.main.tempMax.roundDouble())
                        Spacer()
                        WeathereVisual(logo: "thermometer.snowflake", name: "Min temp", value: weather.main.tempMin.roundDouble())
                    }
                    .padding()
                    HStack {
                        WeathereVisual(logo: "tornado", name: "Wind speed", value: weather.wind.speed.roundDouble())
                        Spacer()
                        WeathereVisual(logo: "humidity", name: "Humidity", value: "\(weather.main.humidity)%")
                    }
                    .padding()

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(.white)
                .background(Color(hue: 0.597, saturation: 0.361, brightness: 0.219, opacity: 0.585))
                .cornerRadius(30)
            }
            .edgesIgnoringSafeArea(.bottom)
            
            
        }
    
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previeWeather)
            .preferredColorScheme(.dark)
           
    }
}
