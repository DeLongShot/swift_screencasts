//Computed Properties

class GoalTracker {
  var goal: Double = 0.0
  var unitsCompleted: Double = 0.0
  var percentageCompleted: Double {
    get {
      return unitsCompleted/goal * 100
    }
    
    set(newPercentageCompleted){
      unitsCompleted = goal * (newPercentageCompleted/100)
    }
  }
  var unitsLeft: Double {
    get {
      return goal - unitsCompleted
    }
    
    set(newUnitsLeft){
      unitsCompleted = goal - newUnitsLeft
    }
  }
}

var goalTracker = GoalTracker()
goalTracker.goal = 20.0


goalTracker.percentageCompleted = 12.3
println(goalTracker.unitsLeft)