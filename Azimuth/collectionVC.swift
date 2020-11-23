//
//  collectionVC.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/16/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

//https://api.ipgeolocation.io/astronomy?apiKey=cf80dc7b359c4c9faf66e3cf1385f100&date=2018-01-01
//this is the API request for a specific date, in this one 2018-01-01 yyyy-mm-dd

import UIKit

class collectionVC: UIViewController {
    
    var store: DayStore!
    //var detailView: detail!
    //let dataSource = DataSource()
    var dayss: [Day] = []
    var numberMade = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchDayInformation()
        do{
            sleep(3)
        }
        //print("PRINTING GET NOV DAYS NOW!")
        var days = store.getNovDays()
        //print(days[0].date)
        //print(days[1].date)
        //print(days[15].date)
        //print(days[29].date)
        days = dateSort(arrayT: days)
        for i in days{
            print(i.date)
        }
        //self.dataSource.days = days
        self.dayss = days
        //print(days[0].date)
        //print(days[1].date)
        //print(days[15].date)
        //print(days[29].date)
    }
    var ptitle = "what day is it?"
    var psunrise = "value"
    var psunset = "value"
    var psolarnoon = "value"
    var pdaylength = "value"
    var psunazimuth = 0.0
    var pmoonrise = "value"
    var pmoonset = "value"
    var pmoonazimuth = 0.0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is detail
        {
            let vc = segue.destination as? detail
            vc?.titled = self.ptitle
            vc?.sunrise = self.psunrise
            vc?.sunset = self.psunset
            vc?.solarnoon = self.psolarnoon
            vc?.daylength = self.pdaylength
            vc?.sunazimuth = self.psunazimuth
            vc?.moonrise = self.pmoonrise
            vc?.moonset = self.pmoonset
            vc?.moonazimuth = self.pmoonazimuth
        }
    }
    
    @IBAction func one(_ sender: Any) {
        let thisday = dayss[0]
        self.ptitle = "NOVEMBER 1st, 2020"
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func two(_ sender: Any) {
        self.ptitle = "NOVEMBER 2nd, 2020"

        let thisday = dayss[1]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func three(_ sender: Any) {
        self.ptitle = "NOVEMBER 3rd, 2020"

        let thisday = dayss[2]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func four(_ sender: Any) {
        self.ptitle = "NOVEMBER 4th, 2020"

        let thisday = dayss[3]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func five(_ sender: Any) {
        self.ptitle = "NOVEMBER 5th, 2020"

        let thisday = dayss[4]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func six(_ sender: Any) {
        self.ptitle = "NOVEMBER 6th, 2020"

        let thisday = dayss[5]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func seven(_ sender: Any) {
        self.ptitle = "NOVEMBER 7th, 2020"

        let thisday = dayss[6]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func eight(_ sender: Any) {
        self.ptitle = "NOVEMBER 8th, 2020"

        let thisday = dayss[7]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func nine(_ sender: Any) {
        self.ptitle = "NOVEMBER 9th, 2020"

        let thisday = dayss[8]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func ten(_ sender: Any) {
        self.ptitle = "NOVEMBER 10th, 2020"

        let thisday = dayss[9]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func eleven(_ sender: Any) {
        self.ptitle = "NOVEMBER 11th, 2020"

        let thisday = dayss[10]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twelve(_ sender: Any) {
        self.ptitle = "NOVEMBER 12th, 2020"

        let thisday = dayss[11]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func thirteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 13th, 2020"

        let thisday = dayss[12]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func fourteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 14th, 2020"

        let thisday = dayss[13]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func fifteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 15th, 2020"

        let thisday = dayss[14]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func sixteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 16th, 2020"

        let thisday = dayss[15]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func seventeen(_ sender: Any) {
        self.ptitle = "NOVEMBER 17th, 2020"

        let thisday = dayss[16]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func eighteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 18th, 2020"

        let thisday = dayss[17]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func nineteen(_ sender: Any) {
        self.ptitle = "NOVEMBER 19th, 2020"

        let thisday = dayss[18]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twenty(_ sender: Any) {
        self.ptitle = "NOVEMBER 20th, 2020"

        let thisday = dayss[19]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentyone(_ sender: Any) {
        self.ptitle = "NOVEMBER 21st, 2020"

        let thisday = dayss[20]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentytwo(_ sender: Any) {
        self.ptitle = "NOVEMBER 22nd, 2020"

        let thisday = dayss[21]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentythree(_ sender: Any) {
        self.ptitle = "NOVEMBER 23rd, 2020"

        let thisday = dayss[22]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentyfour(_ sender: Any) {
        self.ptitle = "NOVEMBER 24th, 2020"

        let thisday = dayss[23]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentyfive(_ sender: Any) {
        self.ptitle = "NOVEMBER 25th, 2020"

        let thisday = dayss[24]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentysix(_ sender: Any) {
        self.ptitle = "NOVEMBER 26th, 2020"

        let thisday = dayss[25]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentyseven(_ sender: Any) {
        self.ptitle = "NOVEMBER 27th, 2020"

        let thisday = dayss[26]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentyeight(_ sender: Any) {
        self.ptitle = "NOVEMBER 28th, 2020"

        let thisday = dayss[27]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func twentynine(_ sender: Any) {
        self.ptitle = "NOVEMBER 29th, 2020"

        let thisday = dayss[28]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }
    @IBAction func thirty(_ sender: Any) {
        self.ptitle = "NOVEMBER 30th, 2020"

        let thisday = dayss[29]
        self.psunrise = thisday.sunrise
        self.psunset = thisday.sunset
        self.psolarnoon = thisday.solarNoon
        self.pdaylength = thisday.dayLength
        self.psunazimuth = Double(thisday.sunAzimuth)
        self.pmoonrise = thisday.moonrise
        self.pmoonset = thisday.moonset
        self.pmoonazimuth = Double(thisday.moonAzimuth)
    }


    
    
    
    
    
    
    
    
    

    //@IBOutlet var CellContentLabel: UILabel!
    //@IBOutlet var collectionView: UICollectionView!
    
    
    //var cellList: [dayCollectionViewCell] = []
    
    
    
    
}


func dateSort(arrayT: [Day]) -> [Day] {
    var array = arrayT
    var changeMade = 1
    //for i in 0...array.count{
    //    if array[i].date > array[i+1].date {
    //        let smaller = array[i+1]
    //        let greater = array[i]
            
    //        array[i] = smaller
     //       array[i+1] = greater
            
    //        changeMade += 1
            
    //    }
    //}
    while changeMade > 0{
        changeMade = 0
        for i in 0...array.count{
            if i < array.count - 1{
                if array[i].date > array[i+1].date {
                    let smaller = array[i+1]
                    let greater = array[i]
                
                    array[i] = smaller
                    array[i+1] = greater
                
                    changeMade += 1
                
                }
            }
        }
    }
    return array
}



