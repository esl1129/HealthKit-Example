//
//  WorkoutTableViewCell.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/29.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell {
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.roundCorners(cornerRadius: 50, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
