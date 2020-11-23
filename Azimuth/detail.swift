//
//  detail.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/23/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import UIKit

class detail: UIViewController{
    
    @IBOutlet var sunriseOutlet: UILabel!
    @IBOutlet var sunsetOutlet: UILabel!
    @IBOutlet var solarnoonOutlet: UILabel!
    @IBOutlet var daylengthOutlet: UILabel!
    @IBOutlet var sunazimuthOutlet: UILabel!
    @IBOutlet var moonriseOutlet: UILabel!
    @IBOutlet var moonsetOutlet: UILabel!
    @IBOutlet var moonazimuthOutlet: UILabel!
    
    @IBOutlet var titleOutlet: UILabel!
    var sunrise = "value"
    var sunset = "value"
    var solarnoon = "value"
    var daylength = "value"
    var sunazimuth = 0.0
    var moonrise = "value"
    var moonset = "value"
    var moonazimuth = 0.0
    var titled = "noday"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleOutlet.text = titled
        self.sunriseOutlet.text = sunrise
        self.sunsetOutlet.text = sunset
        self.solarnoonOutlet.text = solarnoon
        self.daylengthOutlet.text = daylength
        self.sunazimuthOutlet.text = String(sunazimuth)
        self.moonriseOutlet.text = moonrise
        self.moonsetOutlet.text = moonset
        self.moonazimuthOutlet.text = String(moonazimuth)

    }
    
//    func detailUpdate(psunrise: String, psunset: String, psolarnoon: String, pdaylength: String, psunazimuth: Float, pmoonrise: String, pmoonset: String, pmoonazimuth: Float){
//        sunriseOutlet.text = psunrise
//        sunsetOutlet.text = psunset
//        solarnoonOutlet.text = psolarnoon
//        daylengthOutlet.text = pdaylength
//        sunazimuthOutlet.text = String(psunazimuth)
//        moonriseOutlet.text = pmoonrise
//        moonsetOutlet.text = pmoonset
//        moonazimuthOutlet.text = String(pmoonazimuth)
//
//
//    }
    
    
    
    enum CodingKeys: String, CodingKey {
        
        case sunriseOutlet
        case sunsetOutlet
        
        case solarnoonOutlet
        case daylengthOutlet
        case sunazimuthOutlet
        case moonriseOutlet
        case moonsetOutlet
        
        case moonazimuthOutlet
        
    }
    
}
