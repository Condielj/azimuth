//
//  detail.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/23/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import UIKit
import Foundation

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
        self.sunazimuthOutlet.text = String(round(sunazimuth))+"°"
        self.moonriseOutlet.text = moonrise
        self.moonsetOutlet.text = moonset
        self.moonazimuthOutlet.text = String(round(moonazimuth))+"°"

    }
    


    
    
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
