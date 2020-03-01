//
//  TwelveHoursForecast.swift
//  AstroWeather
//
//  Created by Nofar Efraim on 27/02/2020.
//  Copyright © 2020 Nofar Efraim. All rights reserved.
//

import UIKit

struct HourlyTemperature: Codable {
    let value: Double
    let unit: String
    let unitType: Int
    
    enum codingKeys: String, CodingKey {
        case value = "Value"
        case unit = "Unit"
        case unitType = "UnitType"
    }
}


struct TwelveHoursForecast: Codable {
    let dateTime: Date
    let epochDateTime: Int64
    let weatherIcon: Int
    let iconPhrase: String
    let hasPrecipitation: Bool
    let isDaylight: Bool
    let temperature: HourlyTemperature
    let precipitationProbability: Int
    let mobileLink: String
    let link: String
    
    enum codingKeys: String, CodingKey {
        case dateTime = "DateTime"
        case epochDateTime = "EpochDateTime"
        case weatherIcon = "WeatherIcon"
        case iconPhrase = "IconPhrase"
        case hasPrecipitation = "HasPrecipitation"
        case isDaylight = "IsDaylight"
        case temperature = "Temperature"
        case precipitationProbability = "PrecipitationProbability"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
}


