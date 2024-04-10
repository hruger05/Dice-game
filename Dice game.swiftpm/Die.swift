import SwiftUI

class Die {
    @Published var value = 0
    @Published var numSides = 0
    
    init(value: Int, numSides: Int)
    {
        self.value = value
        self.numSides = numSides
    }
    
    func roll() -> Int
    {
        value += Int.random(in: 1...6)
        value += Int.random(in: 1...6)
        return value
    }
    func rollCustom(numSides: Int) -> Int
    {
        value += Int.random(in: 1...numSides)
        value += Int.random(in: 1...numSides)
        return value
    }
}
