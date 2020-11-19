//
//  DayStore.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/18/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import Foundation

class DayStore {

    
    //length in days of each month, used to quickly add months
    let currentYear = Calendar.current.component(.year, from: Date())
    var leapYear = false
    let jan = 31
    var feb = 28
    let mar = 31
    let apr = 30
    let may = 31
    let jun = 30
    let jul = 31
    let aug = 31
    let sep = 30
    let oct = 31
    let nov = 30
    let dec = 31
    
    
    
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    private var nov_days: [Day] = []
    
    func fetchDayInformation(){
        
        var nov_days: [Day]
        //for the purposes of the assignment, for now it will be made only for november
        let baseDate = "2020-11-"
        for i in 1...nov {
            var specificDate = baseDate
            if i < 9 {
                specificDate = specificDate + "0"
            }
            specificDate = specificDate + String(i+1)
            print(specificDate)
            let url = AstroAPI.passInURLParameter(specificDate: specificDate)
            let request = URLRequest(url: url)
            let task = session.dataTask(with: request) {
                (data, response, error) in
                
                if let jsonData = data {
                    if let jsonString = String(data: jsonData, encoding: .utf8){
                        print(jsonString)
                        let dict = self.convertToDictionary(text: jsonString)
                        let mDate = dict!["date"]
                        let mSunrise = dict!["sunrise"]
                        let mSunset = dict!["sunset"]
                        let mDayLength = dict!["day_length"]
                        let mSunAzimuth = (dict!["sun_azimuth"] as? NSNumber)?.floatValue ?? 0
                        let mMoonrise = dict!["moonrise"]
                        let mMoonset = dict!["moonset"]
                        let mMoonAzimuth = (dict!["moon_azimuth"] as? NSNumber)?.floatValue ?? 0
                        let mSolarNoon = dict!["solar_noon"]
                        
                        let new_day = Day(date: mDate as! String, sunrise: mSunrise as! String, sunset: mSunset as! String, solarNoon: mSolarNoon as! String, dayLength: mDayLength as! String, sunAzimuth: mSunAzimuth , moonrise: mMoonrise as! String, moonset: mMoonset as! String, moonAzimuth: mMoonAzimuth )
                        
                        self.nov_days.append(new_day)
                    }
                    
                } else if let requestError = error {
                    print("Error fetching information: \(requestError)")
                } else {
                    print("Unexpected error with the request.")
                }
                
                //let result = self.processDayRequest(data: data, error: error)
                //completion(result)
            }
            task.resume()
        }
        for i in self.nov_days{
            print(i)
        }
        print(self.nov_days)
    }
    
    func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    private func processDayRequest(data: Data?, error: Error?) -> Result<Day, Error> {
        guard let jsonData = data else {
            return .failure(error!)
        }
        return AstroAPI.days(fromJSON: jsonData)
    }
    
}
