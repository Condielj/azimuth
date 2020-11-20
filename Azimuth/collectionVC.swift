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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchDayInformation()
        do{
            sleep(3)
        }
        //print("PRINTING GET NOV DAYS NOW!")
        var days = store.getNovDays()
        print(days[0].date)
        print(days[1].date)
        print(days[15].date)
        print(days[29].date)
        days = dateSort(arrayT: days)
        for i in days{
            print(i.date)
        }
        //print(days[0].date)
        //print(days[1].date)
        //print(days[15].date)
        //print(days[29].date)
    
    }
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
