//
//  dayCollectionViewCell.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/19/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import UIKit

class dayCollectionViewCell: UICollectionViewCell {
    @IBOutlet var contentLabel: UILabel!
    //var day = Day(date: "ysnst", sunrise: "ysnst", sunset: "ysnst", solarNoon: "ysnst", dayLength: "ysnst", sunAzimuth: 0.0, moonrise: "ysnst", moonset: "ysnst", moonAzimuth: 0.0)
    var day: Day?
    func setDay(passedDay: Day){
        self.day = passedDay
    }
    
    func printDay(){
        //print(self.day)
        print(self.day!.date)
    }
    
    func update(dayLabel: String?) {
        //if let labelToDisplay = dayLabel{
        //    contentLabel.text = labelToDisplay
        //} else {
        //    contentLabel.text = "..."
        //}
        let intForIndex = 8
        let dateLabelString = day!.date
        let index = dateLabelString.index(dateLabelString.startIndex, offsetBy: intForIndex)
        let dateLabelSlice = String(dateLabelString[index...])
        contentLabel.text = dateLabelSlice
    }
}
