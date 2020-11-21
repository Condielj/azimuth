//
//  DataSource.swift
//  Azimuth
//
//  Created by Lawrence J. Condie on 11/19/20.
//  Copyright © 2020 Lawrence J. Condie. All rights reserved.
//

import UIKit

class DataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "dayCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! dayCollectionViewCell
        //print("Begin Debug")
        
        //VVV going to try to move all of this into collectionVC.swift VVV
        //if numberMade <= 29{
        //cell.setDay(passedDay: days[self.numberMade])
        //}
        //var dateLabelString = days
        //if numberMade <= 29{
        //    cell.update(dayLabel: "...")
        //    self.cellList.append(cell)
        //    print(cellList.count)
        //    for i in cellList{
        //        print(i.day?.date)
        //    }
        //}
        //self.numberMade += 1
        //^^^ going to try to move all of this into collectionVC.swift ^^^
        return cell
    }
    

    var days = [Day]()
    var numberMade = 0
    var cellList: [dayCollectionViewCell] = []

}
