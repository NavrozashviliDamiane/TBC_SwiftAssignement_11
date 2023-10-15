// მეკობრეების ხომალდის
class PirateShip {
    var name: String
    var crew: [String]
    var cannonsCount: Int
    var cargo: [String]

    init(name: String, crew: [String], cannonsCount: Int, cargo: [String]) {
        self.name = name
        self.crew = crew
        self.cannonsCount = cannonsCount
        self.cargo = cargo
    }

    func prepareForWar() {
        print("\(name) is prepared for war!")
    }
}

// საგანძურის რუკა
class TreasureMap {
    private let treasureX: Int
    private let treasureY: Int

    init(treasureX: Int, treasureY: Int) {
        self.treasureX = treasureX
        self.treasureY = treasureY
    }

    func hintToTreasure(x: Int, y: Int) -> String {
        if x == treasureX && y == treasureY {
            return "You found the treasure!"
        } else {
            let hintX = x < treasureX ? "Go East" : "Go West"
            let hintY = y < treasureY ? "Go North" : "Go South"
            return "Hint: \(hintX), \(hintY) to find the treasure."
        }
    }
}

// მეკობრეების კოდი
class PirateCode {
    func decideAdventure(adventure: String) {
        print("Adventure decided: \(adventure)")
    }

    func discussPlan(isAttack: Bool) {
        if isAttack {
            print("Discussing attack strategy with the crew.")
            print("Using all cannons for maximum impact!")
        } else {
            print("Discussing evasion strategy with the crew.")
            print("Plotting the course to escape!")
        }
    }
}

// საზღვაო თავგადასავალი
class SeaAdventure {
    var adventureType: String

    init(adventureType: String) {
        self.adventureType = adventureType
    }

    func handleAdventure() {
        print("Handling sea adventure: \(adventureType)")
    }
}

// საწყისი კოორდინატები
let startX = 5
let startY = 8

// საგანძურის კოორდინატები
let treasureX = 10
let treasureY = 15

// გემის შექმნა
let crew = ["Jack", "Barbossa", "Anne", "Will"]
let cargo = ["Gold", "Rum", "Food"]
let ship = PirateShip(name: "Black Pearl", crew: crew, cannonsCount: 20, cargo: cargo)

// საგანძურის რუკის შექმნა
let treasureMap = TreasureMap(treasureX: treasureX, treasureY: treasureY)

// ძებნის დაწყება
print("Starting treasure hunt...")
print("Current coordinates: (\(startX), \(startY))")

// მინიშნების მიღება
let hint = treasureMap.hintToTreasure(x: startX, y: startY)
print(hint)

// საზღვაო თავგადასავალი
let seaAdventure = SeaAdventure(adventureType: "Flying Dutchman")
print("Encountering a sea adventure: \(seaAdventure.adventureType)")

// მეკობრეების კოდი
let pirateCode = PirateCode()


pirateCode.decideAdventure(adventure: seaAdventure.adventureType)

let attackDecision = true

pirateCode.discussPlan(isAttack: attackDecision)
