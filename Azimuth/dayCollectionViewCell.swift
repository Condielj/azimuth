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
    
    
    func update(dayLabel: String?) {
        if let labelToDisplay = dayLabel{
            contentLabel.text = labelToDisplay
        } else {
            contentLabel.text = "..."
        }
    }
}
