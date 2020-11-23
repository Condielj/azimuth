//
//  AstroAPI.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/16/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//


//two api keys if you run out of requests
//9689243c44e741a1ab63d98eba4e8912
//cf80dc7b359c4c9faf66e3cf1385f100
import Foundation

struct AstroAPI {
    private static let baseURLString = "https://api.ipgeolocation.io/astronomy"
    private static let apiKey = "9689243c44e741a1ab63d98eba4e8912"
    
    private static func AstroURL(parameters: [String:String]?) -> URL{
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "method": "get",
            "format": "json",
            "nojsoncallback": "1",
            "apiKey": apiKey
        ]
        
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        
        if let additionalParams = parameters {
            for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        components.queryItems = queryItems
        
        //print(components.url)
        return components.url!
    }
    public static func passInURLParameter(specificDate: String) -> URL{
        //var specificDateURL: URL{
            return AstroURL(parameters: ["date":specificDate])
        //}
    }
    
    struct AstroResponse: Codable{
        let day: Day
        
        enum CodingKeys: String, CodingKey {
            case day = "day"
        }
    }
    
    static func days(fromJSON data: Data) -> Result<Day, Error> {
        do {
            let decoder = JSONDecoder()
            let astroResponse = try decoder.decode(AstroResponse.self, from: data)
            return .success(astroResponse.day)
        } catch {
            return .failure(error)
        }
    }
}


