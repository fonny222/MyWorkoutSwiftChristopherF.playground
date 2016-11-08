//: Playground - noun: a place where people can play

import UIKit


// this class creates the individual exercises
class Exercise {
    
    var exName:String = "name"
    var exSets:Int = 0
    var exReps:Int = 0
    var exWeight:Int = 0
    
    // if called displays the workout
    func displayWeight() {
        print("Exercise: ",self.exName)
        print("    Sets: ",self.exSets)
        print("    Reps: ",self.exReps)
        print("   Weight: ",self.exWeight)
    }
}


// class for the workout routine
class WorkoutRoutine: Exercise {
    let weekDays = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var workoutDay:String = "day"
    var workoutName:String = "Name"
    var workoutEx1:String = "exercise"
    var workoutEx2:String = "exercise"
    var workoutEx3:String = "exercise"

    // function to display the workout
    func displayWorkout(){
        print("Name: ",self.workoutName)
        print("Day: ",self.workoutDay)
        print("Exercise 1: ",self.workoutEx1)
        print("Exercise 2:",self.workoutEx2)
        print("Exercise 3:",self.workoutEx3)
        
    }

}




// this displays the top menu
func displayTopMenu(){
    print()
    print("Please Select One of the Following:")
    print("1: Exercise")
    print("2: Workout")
    print("3: Calories Burned")
    print()
    
}

// this displays the exercise menu
func displayExerciseMenu(){
    print()
    print("Please Select One of the Following:")
    print("1: View Exercise")
    //print("2: View Exercise")
    print()
}

func displayWorkoutMenu(){
    print()
    print("1: View Workout")
    print()
}


// arrays for both classes
var exArray = [Exercise]()
var workArray = [WorkoutRoutine]()

//create an object for exercise and
var newExercise = Exercise()
var newWorkout = WorkoutRoutine()


// exercise variables
newExercise.exName = "Bench Press"
newExercise.exSets = 4
newExercise.exReps = 5
newExercise.exWeight = 185

exArray.append(newExercise)


// arrays of exercises
let arms = ["Biceps Hammer Curl","Barbell Curl","Dumbbell Curl","Concentration Curl","Preacher Curl","Incline Dumbbell Curl","Dumbbell Lying Triceps Extension","Seated Bent Over Dumbbell Kickback","Dumbbell Triceps Extension","Seated French Press","Skull Crusher","Machine Triceps Extension"];

let back = ["Wide Grip Pulldown","Close Grip Pulldown","Bent Over Dumbbell Row","Seated Rowing"];

let chest = ["Bench Press","Incline Dumbbell Press","Incline Fly's","Incline Barbell Bench Press","Dumbbell Bench Press","Flat Incline Fly's"];

let legs = ["Dumbbell Walking Lunge","Leg Press Machine","Leg Extension","Machine Lying leg Curl","Machine Seated Leg Curl","Seated Calf Raise Machine","Standing Calf Raise Machine","Seated Calf Raise Machine"];

let shoulders = ["Dumbbell Lateral Raises","Dumbbell Front Raises","Dumbbell Shoulder Press","Rear Delt Fly","Dumbbell Shrugs","Smith Machine Shoulder Press","Seated Arnold Press"];


// workout variables
newWorkout.workoutName = "Test Name"
newWorkout.workoutDay = "Monday"
newWorkout.workoutEx1 = arms[1]
newWorkout.workoutEx2 = arms[2]
newWorkout.workoutEx3 = arms[3]

workArray.append(newWorkout)



//print(exArray[0].displayWeight())



// use this to change the variables
var topMenu = 2
var exerciseMenu = 0
var workoutMenu = 1


    displayTopMenu()

    
    //topMenu = 1
    switch topMenu {
    case 1:
        // display the exercise options
        displayExerciseMenu()
            switch exerciseMenu {
            case 1:
                print(exArray[0].displayWeight())
                break
            default:
                print("Please enter a valid number")
            }
        break
        
        // workout section of switch
    case 2:
        displayWorkoutMenu()
        switch workoutMenu {
        case 1:
           print(workArray[0].displayWorkout())
            break
        default:
            print("error")
            break
        }
        break
        
    case 3:
        print("This is where the calorie counter will be")
        break
        
    default:
        print("")
        break
    }
    


*
// test can be deleted
/*//assign values
newExercise.name = "Bench Press"
newExercise.sets = 4
newExercise.reps = 5
newExercise.weight = 185
*/

// this calls the function from the class and displays the set exercise
//print(newExercise.displayWeight())
 
