class SeaAdventure {
    private let adventureType: String

    init(adventureType: String) {
        self.adventureType = adventureType
    }

    func encounter() {
        print("Adventure : \(adventureType)")
    }
}


let seaAdventure = SeaAdventure(adventureType: "Shipwreck")
seaAdventure.encounter() 
