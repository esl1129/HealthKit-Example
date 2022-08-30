//
//  WorkoutViewController.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/29.
//

import UIKit

class WorkoutViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var workoutViewModel = WorkoutViewModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        registerXib()
    }
}

// MARK: - TableView Delegate & Datasource
extension WorkoutViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: Section
    func numberOfSections(in tableView: UITableView) -> Int {
        return workoutViewModel.workouts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return WorkoutTopic(rawValue: UInt(section))?.description
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor(named: "SubTextColor")
    }
    
    // MARK: ROW
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let workoutList = workoutViewModel.workouts[UInt(indexPath.section)] else {
            return
        }
        
        let workout = workoutList[indexPath.row]
        print(workout)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutViewModel.workouts[UInt(section)]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let workoutList = workoutViewModel.workouts[UInt(indexPath.section)],
              let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) as? WorkoutTableViewCell
        else {
            return UITableViewCell.init()

        }
        
        let workout = workoutList[indexPath.row]

        cell.icon?.image = UIImage(systemName: workout.image)
        cell.nameLabel.text = workout.name
        
        return cell
    }
    
    // MARK: Layout
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    

}

extension WorkoutViewController {
    private func registerXib() {
        let nibName = UINib(nibName: "WorkoutTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "workoutCell")
    }

}
