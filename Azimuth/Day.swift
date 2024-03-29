//
//  Day.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/18/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import Foundation

class Day: Codable {
    
    let date: String
    
    let sunrise: String
    let sunset: String
    let solarNoon: String
    let dayLength: String
    let sunAzimuth: Float
    
    
    
    let moonrise: String
    let moonset: String
    let moonAzimuth: Float
    
    let dayIndex: Int
    
    init(date: String, sunrise: String, sunset: String, solarNoon: String, dayLength: String, sunAzimuth: Float, moonrise: String, moonset: String, moonAzimuth: Float) {
        
        self.date = date
        self.sunrise = sunrise
        self.sunset = sunset
        self.solarNoon = solarNoon
        self.dayLength = dayLength
        self.sunAzimuth = sunAzimuth
        self.moonrise = moonrise
        self.moonset = moonset
        self.moonAzimuth = moonAzimuth
        
        let dateLabelString = self.date
        let intForIndex = 8
        let index = dateLabelString.index(dateLabelString.startIndex, offsetBy: intForIndex)
        self.dayIndex = Int(String(dateLabelString[index...]))!
        
    }
    
    
    
    
    enum CodingKeys: String, CodingKey {
        
        case date
        case dayIndex
        
        case sunrise
        case sunset
        case solarNoon = "solar_noon"
        case dayLength = "day_length"
        case sunAzimuth = "sun_azimuth"
        
        case moonrise
        case moonset
        case moonAzimuth = "moon_azimuth"
        
    }
}

extension Day: Equatable {
    static func == (lhs: Day, rhs: Day) -> Bool {
        return lhs.date == rhs.date
    }
}
