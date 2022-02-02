//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Дмитрий Гришечко on 01.02.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation


struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
