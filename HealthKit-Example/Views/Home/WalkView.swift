//
//  WalkView.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/30.
//

import HealthKit
import UIKit


class WalkView: UIView {
    let healthStore = HKHealthStore()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        getTodaysSteps { steps in
            print(steps)
            
        }

    }
    
    func getTodaysSteps(completion: @escaping (Double) -> Void) {
        let stepsQuantityType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
        
        let now = Date()
        let startOfDay = Calendar.current.startOfDay(for: now)
        let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: now, options: .strictStartDate)
        
        let query = HKStatisticsQuery(quantityType: stepsQuantityType, quantitySamplePredicate: predicate, options: .cumulativeSum) { _, result, _ in
            guard let result = result, let sum = result.sumQuantity() else {
                completion(0.0)
                return
            }
            completion(sum.doubleValue(for: HKUnit.count()))
        }
        
        healthStore.execute(query)
    }
}
