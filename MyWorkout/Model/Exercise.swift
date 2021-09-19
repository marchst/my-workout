//
//  Exercise.swift
//  MyWorkout
//
//  Created by Surapunya Thongdee on 18/9/2564 BE.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum: CustomStringConvertible {
        case squat
        case stepUp
        case burpee
        case sunSalute
        case lunges
        case plank
        case bicycleCrunch
    
        var description: String {
            switch self {
            case .squat:
                return NSLocalizedString("Squat", comment: "exercise")
            case .stepUp:
                return NSLocalizedString("Step Up", comment: "exercise")
            case .burpee:
                return NSLocalizedString("Burpee", comment: "exercise")
            case .sunSalute:
                return NSLocalizedString("Sun Salute", comment: "exercise")
            case .lunges:
                return NSLocalizedString("Lunges", comment: "exercise")
            case .plank:
                return NSLocalizedString("Plank", comment: "exercise")
            case .bicycleCrunch:
                return NSLocalizedString("Bicycle Crunch", comment: "exercise")
            }
        }
    }
}

extension Exercise {
    static let exercises = [
        Exercise(exerciseName: String(describing: ExerciseEnum.squat), videoName: "squat"),
        Exercise(exerciseName: String(describing: ExerciseEnum.stepUp), videoName: "step-up"),
        Exercise(exerciseName: String(describing: ExerciseEnum.burpee), videoName: "burpee"),
        Exercise(exerciseName: String(describing: ExerciseEnum.sunSalute), videoName: "sun-salute"),
        Exercise(exerciseName: String(describing: ExerciseEnum.lunges), videoName: "lunges"),
        Exercise(exerciseName: String(describing: ExerciseEnum.plank), videoName: "plank"),
        Exercise(exerciseName: String(describing: ExerciseEnum.bicycleCrunch), videoName: "bicycle-crunch")
    ]
}
