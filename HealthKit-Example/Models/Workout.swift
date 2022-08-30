//
//  Workout.swift
//  HealthKit-Example
//
//  Created by mcnc on 2022/08/29.
//

import Foundation
import HealthKit

struct Workout {
    let topic: WorkoutTopic
    let image: String
    let name: String
}

enum WorkoutTopic: UInt {
    case IndividualSports = 0
    case TeamSports = 1
    case ExerciseAndFitness = 2
    case StudioActivities = 3
    case RacketSports = 4
    case OutdoorActivities = 5
    case SnowAndIceSports = 6
    case WaterActivities = 7
    case MartialArts = 8
    case OtherActivities = 9
    
    var description: String {
        switch self {
        case .IndividualSports: return "Individual sports"
        case .TeamSports: return "Team Sports"
        case .ExerciseAndFitness: return "Exercise and fitness"
        case .StudioActivities: return "Studio activities"
        case .RacketSports: return "Racket sports"
        case .OutdoorActivities: return "Outdoor activities"
        case .SnowAndIceSports: return "Snow and ice sports"
        case .WaterActivities: return "Water activities"
        case .MartialArts: return "Martial arts"
        case .OtherActivities: return "Other activities"
        }
    }
}

struct WorkoutType {
    let type: HKWorkoutActivityType
    let name: String
    let topic: WorkoutTopic
    
    init?(idx: UInt) {
        guard let hkWorkoutActivityType = HKWorkoutActivityType(rawValue: idx) else {
            return nil
        }
        self.type = hkWorkoutActivityType
        
        switch hkWorkoutActivityType {
        case .americanFootball:
            self.name = "americanFootball"
            self.topic = .TeamSports
        case .archery:
            self.name = "archery"
            self.topic = .IndividualSports
        case .australianFootball:
            self.name = "australianFootball"
            self.topic = .TeamSports
        case .badminton:
            self.name = "badminton"
            self.topic = .RacketSports
        case .baseball:
            self.name = "baseball"
            self.topic = .TeamSports
        case .basketball:
            self.name = "basketball"
            self.topic = .TeamSports
        case .bowling:
            self.name = "bowling"
            self.topic = .IndividualSports
        case .boxing:
            self.name = "boxing"
            self.topic = .MartialArts
        case .climbing:
            self.name = "climbing"
            self.topic = .ExerciseAndFitness
        case .cricket:
            self.name = "cricket"
            self.topic = .TeamSports
        case .crossTraining:
            self.name = "crossTraining"
            self.topic = .ExerciseAndFitness
        case .curling:
            self.name = "curling"
            self.topic = .SnowAndIceSports
        case .cycling:
            self.name = "cycling"
            self.topic = .ExerciseAndFitness
        case .elliptical:
            self.name = "elliptical"
            self.topic = .ExerciseAndFitness
        case .equestrianSports:
            self.name = "equestrianSports"
            self.topic = .OutdoorActivities
        case .fencing:
            self.name = "fencing"
            self.topic = .IndividualSports
        case .fishing:
            self.name = "fishing"
            self.topic = .OutdoorActivities
        case .functionalStrengthTraining:
            self.name = "functionalStrengthTraining"
            self.topic = .ExerciseAndFitness
        case .golf:
            self.name = "golf"
            self.topic = .OutdoorActivities
        case .gymnastics:
            self.name = "gymnastics"
            self.topic = .IndividualSports
        case .handball:
            self.name = "handball"
            self.topic = .TeamSports
        case .hiking:
            self.name = "hiking"
            self.topic = .OutdoorActivities
        case .hockey:
            self.name = "hockey"
            self.topic = .TeamSports
        case .hunting:
            self.name = "hunting"
            self.topic = .OutdoorActivities
        case .lacrosse:
            self.name = "lacrosse"
            self.topic = .TeamSports
        case .martialArts:
            self.name = "martialArts"
            self.topic = .MartialArts
        case .mindAndBody:
            self.name = "mindAndBody"
            self.topic = .StudioActivities
        case .paddleSports:
            self.name = "paddleSports"
            self.topic = .WaterActivities
        case .play:
            self.name = "play"
            self.topic = .OutdoorActivities
        case .preparationAndRecovery:
            self.name = "preparationAndRecovery"
            self.topic = .ExerciseAndFitness
        case .racquetball:
            self.name = "racquetball"
            self.topic = .RacketSports
        case .rowing:
            self.name = "rowing"
            self.topic = .WaterActivities
        case .rugby:
            self.name = "rugby"
            self.topic = .TeamSports
        case .running:
            self.name = "running"
            self.topic = .ExerciseAndFitness
        case .sailing:
            self.name = "sailing"
            self.topic = .WaterActivities
        case .skatingSports:
            self.name = "skatingSports"
            self.topic = .SnowAndIceSports
        case .snowSports:
            self.name = "snowSports"
            self.topic = .SnowAndIceSports
        case .soccer:
            self.name = "soccer"
            self.topic = .TeamSports
        case .softball:
            self.name = "softball"
            self.topic = .TeamSports
        case .squash:
            self.name = "squash"
            self.topic = .RacketSports
        case .stairClimbing:
            self.name = "stairClimbing"
            self.topic = .ExerciseAndFitness
        case .surfingSports:
            self.name = "surfingSports"
            self.topic = .WaterActivities
        case .swimming:
            self.name = "swimming"
            self.topic = .WaterActivities
        case .tableTennis:
            self.name = "tableTennis"
            self.topic = .RacketSports
        case .tennis:
            self.name = "tennis"
            self.topic = .RacketSports
        case .trackAndField:
            self.name = "trackAndField"
            self.topic = .IndividualSports
        case .traditionalStrengthTraining:
            self.name = "traditionalStrengthTraining"
            self.topic = .ExerciseAndFitness
        case .volleyball:
            self.name = "volleyball"
            self.topic = .TeamSports
        case .walking:
            self.name = "walking"
            self.topic = .ExerciseAndFitness
        case .waterFitness:
            self.name = "waterFitness"
            self.topic = .WaterActivities
        case .waterPolo:
            self.name = "waterPolo"
            self.topic = .WaterActivities
        case .waterSports:
            self.name = "waterSports"
            self.topic = .WaterActivities
        case .wrestling:
            self.name = "wrestling"
            self.topic = .MartialArts
        case .yoga:
            self.name = "yoga"
            self.topic = .StudioActivities
        case .barre:
            self.name = "barre"
            self.topic = .StudioActivities
        case .coreTraining:
            self.name = "coreTraining"
            self.topic = .ExerciseAndFitness
        case .crossCountrySkiing:
            self.name = "crossCountrySkiing"
            self.topic = .SnowAndIceSports
        case .downhillSkiing:
            self.name = "downhillSkiing"
            self.topic = .SnowAndIceSports
        case .flexibility:
            self.name = "flexibility"
            self.topic = .ExerciseAndFitness
        case .highIntensityIntervalTraining:
            self.name = "highIntensityIntervalTraining"
            self.topic = .ExerciseAndFitness
        case .jumpRope:
            self.name = "jumpRope"
            self.topic = .ExerciseAndFitness
        case .kickboxing:
            self.name = "kickboxing"
            self.topic = .MartialArts
        case .pilates:
            self.name = "pilates"
            self.topic = .StudioActivities
        case .snowboarding:
            self.name = "snowboarding"
            self.topic = .SnowAndIceSports
        case .stairs:
            self.name = "stairs"
            self.topic = .ExerciseAndFitness
        case .stepTraining:
            self.name = "stepTraining"
            self.topic = .ExerciseAndFitness
        case .wheelchairWalkPace:
            self.name = "wheelchairWalkPace"
            self.topic = .ExerciseAndFitness
        case .wheelchairRunPace:
            self.name = "wheelchairRunPace"
            self.topic = .ExerciseAndFitness
        case .taiChi:
            self.name = "taiChi"
            self.topic = .MartialArts
        case .mixedCardio:
            self.name = "mixedCardio"
            self.topic = .ExerciseAndFitness
        case .handCycling:
            self.name = "handCycling"
            self.topic = .ExerciseAndFitness
        case .discSports:
            self.name = "discSports"
            self.topic = .TeamSports
        case .fitnessGaming:
            self.name = "fitnessGaming"
            self.topic = .ExerciseAndFitness
        case .cardioDance:
            self.name = "cardioDance"
            self.topic = .StudioActivities
        case .socialDance:
            self.name = "socialDance"
            self.topic = .StudioActivities
        case .pickleball:
            self.name = "pickleball"
            self.topic = .RacketSports
        case .cooldown:
            self.name = "cooldown"
            self.topic = .ExerciseAndFitness
        case .other:
            self.name = "other"
            self.topic = .OtherActivities
        case .dance:
            self.name = "other"
            self.topic = .OtherActivities
        case .danceInspiredTraining:
            self.name = "other"
            self.topic = .OtherActivities
        case .mixedMetabolicCardioTraining:
            self.name = "other"
            self.topic = .OtherActivities
        default:
            return nil
        }
    }
}
