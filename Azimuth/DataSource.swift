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
        cell.setDay(passedDay: days[self.numberMade])
        //cell.setDay(passedDay: )
        //var dateLabelString = days
        cell.update(dayLabel: "...")
        self.numberMade += 1
        return cell
    }
    

    var days = [Day]()
    var numberMade = 0

}
