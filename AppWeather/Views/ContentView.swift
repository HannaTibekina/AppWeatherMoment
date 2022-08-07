//
//  ContentView.swift
//  AppWeather
//
//  Created by Анна Тибекина on 05.08.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
   var weatherManager = WeatherManager()
 //   var forecastManager = ForecastManager()
    @State var weather: Welcome?
 //   @State var weatherForecast: Forecast?
    
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        VStack {
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longtitude: location.longitude)
                            } catch {
                                print("Error getting weather!: \(error)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                WelcomeView()
                    .environmentObject(locationManager)
                }
            }
            }
           
        }
      //  .background(Color("AccentColor"))
      // .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
