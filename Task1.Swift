// მენეჯმენტის პროტოკოლის იმპლემენტაცია სატვირთოსთვის
protocol CargoManaging {
    func addCargo(item: String)
    func removeCargo(item: String)
    func listCargo()
}

// ეკიპაჟის მენეჯმენტის  პროტოკოლის იმპლემენტაცია
protocol CrewManaging {
    func addCrew(member: String)
    func removeCrew(member: String)
    func listCrew()
}

// ქვემეხების პრტოკოლის იმპლემენტაცია
protocol Cannons {
    func fireCannon(count: Int)
}

// სატვირთოს მენეჯერის შექმნა
class CargoManager: CargoManaging {
    private var cargo: [String] = []

    func addCargo(item: String) {
        cargo.append(item)
    }

    func removeCargo(item: String) {
        cargo.removeAll { $0 == item }
    }

    func listCargo() {
        print("Cargo: \(cargo.joined(separator: ", "))")
    }
}

// ეკიპაჟის მენეჯერის შექმნა
class CrewManager: CrewManaging {
    private var crew: [String] = []

    func addCrew(member: String) {
        crew.append(member)
    }

    func removeCrew(member: String) {
        crew.removeAll { $0 == member }
    }

    func listCrew() {
        print("Crew: \(crew.joined(separator: ", "))")
    }
}

// მეკობრეების გემის იმპლემენტაიცა სხვადასხვა ელემენტებთან 

class PirateShip: CargoManaging, CrewManaging, Cannons {
    var name: String
    var cannonsCount: Int
    private var cargoManager: CargoManaging
    private var crewManager: CrewManaging

    init(name: String, cannonsCount: Int, cargoManager: CargoManaging, crewManager: CrewManaging) {
        self.name = name
        self.cannonsCount = cannonsCount
        self.cargoManager = cargoManager
        self.crewManager = crewManager
    }

    func addCargo(item: String) {
        cargoManager.addCargo(item: item)
    }

    func removeCargo(item: String) {
        cargoManager.removeCargo(item: item)
    }

    func listCargo() {
        cargoManager.listCargo()
    }

    func addCrew(member: String) {
        crewManager.addCrew(member: member)
    }

    func removeCrew(member: String) {
        crewManager.removeCrew(member: member)
    }

    func listCrew() {
        crewManager.listCrew()
    }

    func fireCannon(count: Int) {
        print("\(count) cannons fired!")
    }
}

// ფრიგატების "შვილობილი კლასი"
class Frigate: PirateShip {
    // Additional functionality for Frigate if needed
}

// "გალეონის" შვილობილი კლასი
class Galleon: PirateShip {
    // Additional functionality for Galleon if needed
}

// ქვემეხების ფუნქციონალის შექმნა
protocol CannonFunctionality {
    func fireCannon(count: Int)
}

// ტესტ-დრაივი
let cargoManager = CargoManager()
let crewManager = CrewManager()

let pirateShip = PirateShip(name: "Black Pearl", cannonsCount: 20, cargoManager: cargoManager, crewManager: crewManager)

pirateShip.addCargo(item: "Gold")
pirateShip.addCargo(item: "Rum")
pirateShip.listCargo()

pirateShip.addCrew(member: "Jack Sparrow")
pirateShip.addCrew(member: "Barbossa")
pirateShip.listCrew()

pirateShip.fireCannon(count: 10)
