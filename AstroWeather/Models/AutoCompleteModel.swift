//
//  AutoCompleteModel.swift
//  AstroWeather
//
//  Created by Nofar Efraim on 26/02/2020.
//  Copyright © 2020 Nofar Efraim. All rights reserved.
//

import UIKit

struct Country: Codable {
    let id: String
    let localizedName: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case localizedName = "LocalizedName"
    }
}

struct AdministrativeArea: Codable {
      let id: String
    let localizedName: String
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case localizedName = "LocalizedName"
    }
}

public struct AutoCompleteModel: Codable {
    let version: Int
    let key: String
    let type: String
    let rank: Int
    let localizedName: String
    let country: Country
    let administrativeArea: AdministrativeArea
    
    
    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case key = "Key"
        case type = "Type"
        case rank = "Rank"
        case localizedName = "LocalizedName"
        case country = "Country"
        case administrativeArea = "AdministrativeArea"
    }
}

let autoCompleteData = Data()
let model = try? JSONDecoder().decode(AutoCompleteModel.self, from: autoCompleteData)
