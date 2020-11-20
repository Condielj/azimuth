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

class collectionVC: UIViewController, UICollectionViewDelegate {

    //@IBOutlet var CellContentLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    var store: DayStore!
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = dataSource
        collectionView.delegate = self
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
        self.dataSource.days = days
        //print(days[0].date)
        //print(days[1].date)
        //print(days[15].date)
        //print(days[29].date)
        self.collectionView.reloadSections(IndexSet(integer: 0))
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let day = dataSource.days[indexPath.row]
        let dateLabelString = day.date
        let intForIndex = 8
        let index = dateLabelString.index(dateLabelString.startIndex, offsetBy: intForIndex)
        let dateLabelSlice = String(dateLabelString[index...])
        
        let dayIndex = self.dataSource.days.firstIndex(of: day)!
        
        let indexPath = IndexPath(item: dayIndex, section: 0)
        
        
        
        //let indexPath = IndexPath(item: dayIndex, section: 0)
        
        if let cell = self.collectionView.cellForItem(at: indexPath) as? dayCollectionViewCell{
        cell.update(dayLabel: dateLabelSlice)
        cell.setDay(passedDay: day)
        }
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



