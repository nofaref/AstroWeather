//
//  WeeklyForecastModel.swift
//  AstroWeather
//
//  Created by Nofar Efraim on 26/02/2020.
//  Copyright © 2020 Nofar Efraim. All rights reserved.
//

import UIKit

struct Headline: Codable {
    let effectiveDate: Date
    let effectiveEpochDate: Int64
    let severity: Int
    let text: String
    let category: String
    let endDate: Date
    let endEpochDate: Int64
    let mobileLink: String
    let link: String
    
    
    enum CodingKeys: String, CodingKey {
        case effectiveDate = "EffectiveDate"
        case effectiveEpochDate = "EffectiveEpochDate"
        case severity = "Severity"
        case text = "Text"
        case category = "Category"
        case endDate = "EndDate"
        case endEpochDate = "EndEpochDate"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
}

public struct WeeklyForecastModel: Codable {
    let headline: Headline
    let dailyForecasts: DailyForecasts
}



struct DailyForecasts: Codable {
    let date: Date
    let epochDate: Int64
    let temperature: WeeklyTemperature
    let day: Day
    let night: Night
    let source: Array<String>
    let mobileLink: String
    let link: String
    
    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case epochDate = "EpochDate"
        case temperature = "Temperature"
        case day = "Day"
        case night = "Night"
        case source = "Source"
        case mobileLink = "MobileLink"
        case link = "Link"
    }
}

struct Night: Codable {
    let icon: Int
    let iconPhrase: String
    let hasPrecipitation: Bool
    
    enum CodingKeys: String, CodingKey {
        case icon = "Icon"
        case iconPhrase = "IconPhrase"
        case hasPrecipitation = "HasPrecipitation"
    }
}
    
    struct Day: Codable {
        let icon: Int
        let iconPhrase: String
        let hasPrecipitation: Bool
        let precipitationType: String
        let precipitationIntensity: String
        
        enum CodingKeys: String, CodingKey {
            case icon = "Icon"
            case iconPhrase = "IconPhrase"
            case hasPrecipitation = "HasPrecipitation"
            case precipitationType = "PrecipitationType"
            case precipitationIntensity = "PrecipitationIntensity"
            
        }
    }
    
    struct WeeklyTemperature: Codable {
        let minimum: Minimum
        let maximum: Maximum
        
        enum CodingKeys: String, CodingKey {
            case minimum = "Minimum"
            case maximum = "Maximum"
        }
    }
    
    struct Minimum: Codable {
        let value: Int
        let unit: String
        let unitType: Int
        
        enum CodingKeys: String, CodingKey {
            case value = "Value"
            case unit = "Unit"
            case unitType = "UnitType"
        }
    }
    
    struct Maximum: Codable {
        let value: Int
        let unit: String
        let unitType: Int
        
        enum CodingKeys: String, CodingKey {
            case value = "Value"
            case unit = "Unit"
            case unitType = "UnitType"
        }
        
       
}
