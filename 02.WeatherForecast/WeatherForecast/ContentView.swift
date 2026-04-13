//
//  ContentView.swift
//  WeatherForecast
//
//  Created by ycw012 on 3/29/26.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack{
            Dayforecast(day: "Mon", isRainy: false, high: 70, low: 50)
            Dayforecast(day: "Tue", isRainy: true, high: 60, low: 40)
            Dayforecast(day: "Wen", isRainy: true, high: 80, low: 50)
        }
    }
}

struct Dayforecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }else {
            return "sun.max.fill"
        }
    }
    var iconColor: Color{
        if isRainy {
            return Color.blue
        }else {
                return Color.yellow
            }
        }

    var body: some View{
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
