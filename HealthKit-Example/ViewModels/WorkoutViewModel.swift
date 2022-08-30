//
//  WorkoutViewModel.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/29.
//

import Foundation

import HealthKit

class WorkoutViewModel {
    var workouts: [UInt: [Workout]] = [:]
    
    init() {
        var idx: UInt = 1
        
        while let workoutType = WorkoutType(idx: idx) {
            let topic = workoutType.topic
            let workout = Workout(topic: topic,
                                  image: "suit.diamond",
                                  name: workoutType.name)
            
            if topic != .OtherActivities {
                workouts[topic.rawValue] = workouts[topic.rawValue] == nil ? [workout] : workouts[topic.rawValue]! + [workout]
            }
            idx += 1
        }
        
        if let workoutType = WorkoutType(idx: 3000) {
            let topic = workoutType.topic
            let workout = Workout(topic: topic,
                                  image: "suit.diamond",
                                  name: workoutType.name)
            
            workouts[topic.rawValue] = [workout]
        }
    }
}
