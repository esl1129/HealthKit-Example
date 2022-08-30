//
//  WaterView.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/30.
//

import UIKit

class WaterView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.roundCorners(cornerRadius: self.frame.width/5, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])


    }
}
