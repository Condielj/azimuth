//
//  AstroAPI.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/16/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import Foundation

struct AstroAPI {
    private static let baseURLString = "https://api.ipgeolocation.io/astronomy?apiKey=cf80dc7b359c4c9faf66e3cf1385f100"
    
    private static func AstroURL(date: String) -> URL{
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        components.queryItems = queryItems
        
        return components.url!
    }
    
    static var specificDateURL: URL{
        return AstroURL(date: "2018")
    }
}


