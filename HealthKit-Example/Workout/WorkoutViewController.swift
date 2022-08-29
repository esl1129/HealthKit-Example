//
//  WorkoutViewController.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/29.
//

import UIKit

let img = ["suit.diamond", "suit.heart", "suit.club", "suit.spade", "hexagon"]
let label = ["1","2","3","4","5"]

class WorkoutViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
    }
}

extension WorkoutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) as? WorkoutTableViewCell else {
            return UITableViewCell.init()
        }
        
        cell.imageView?.image = UIImage(systemName: img[indexPath.row])
        cell.nameLabel.text = label[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
