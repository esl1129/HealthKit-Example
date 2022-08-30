//
//  PointWidgetView.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/30.
//

import UIKit

class PointWidgetView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()

        self.roundCorners(cornerRadius: self.frame.width/5, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
        
        self.backgroundColor = UIColor(named: "MainPointColor")
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "SubPointColor")?.cgColor
    }


}
