//
//  WeathereVisual.swift
//  AppWeather
//
//  Created by Анна Тибекина on 07.08.2022.
//

import SwiftUI

struct WeathereVisual: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
               // .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
                .foregroundColor(.white)

            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct WeathereVisual_Previews: PreviewProvider {
    static var previews: some View {
        WeathereVisual(logo: "thermometer.sun", name: "Feels like", value: "30°")
            .preferredColorScheme(.dark)
    }
}
