import SwiftUI

struct ContentView: View {
    
    @State var num1 = Int.random(in: 1...6)
    @State var num2 = Int.random(in: 1...6)
    @State var sum = 0
    @State var wins = 0
    @State var loses = 0
    @State var display = "Roll"
    
    var body: some View {
        VStack {
            HStack
            {
                Text("Wins: \(wins)")
                    .foregroundColor(.green)
                Text("Loses: \(loses)")
                    .foregroundColor(.red)
            }
            Button(action: {
                num1 = Int.random(in: 1...6)
                num2 = Int.random(in: 1...6)
                sum = num1 + num2
                if sum == 7 || sum == 11
                {
                    display  = "You won"
                    wins += 1
                }
                else if sum == 2 || sum == 3 || sum == 12
                {
                    display = "You lost"
                    loses += 1
                }
                else 
                    {
                    display = "Roll Again"
                }
            }, label: {
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .circular)
                    .frame(width: 150, height: 100)
                    .foregroundColor(.blue)
                    .overlay(
                    Text("Roll")
                        .multilineTextAlignment(.center)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    )
            })
                            
            
            
            HStack
            {
                Image(systemName: "\(num1).square")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Image(systemName: "\(num2).square")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            Text("\(display)")
            
                
        }
        
    }
    
}
