//
//  WeatherView.swift
//  AppWeather
//
//  Created by Анна Тибекина on 05.08.2022.
//

import SwiftUI

struct WeatherView: View {
    var weather: Welcome
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previeWeather)
    }
}
