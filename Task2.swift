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


let treasureMap = TreasureMap(treasureX: 10, treasureY: 15)
print(treasureMap.hintToTreasure(x: 8, y: 10))
print(treasureMap.hintToTreasure(x: 10, y: 15)) 
