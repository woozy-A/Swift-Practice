//
//  ContentView.swift
//  DiceView
//
//  Created by ycw012 on 3/31/26.
//

import SwiftUI


struct ContentView: View {
    
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        
        VStack{
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
           
            HStack{
                ForEach(1...numberOfDice, id: \.description) {_ in
                 Diceview() }
                }
            
            
            HStack{
                Button("- Dice", systemImage: "minus.circle.fill") {
                    withAnimation(.spring) {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
//                .buttonStyle(.bordered)
                .font(.largeTitle)
                .padding(.horizontal)
                .labelStyle(.iconOnly)
                
    
                
                Button("+ Dice", systemImage: "plus.circle.fill") {
                    withAnimation(.easeInOut) {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
//                .buttonStyle(.bordered)
                .font(.largeTitle)
                .padding(.horizontal)
                .labelStyle(.iconOnly)
                
            }
            .padding()
            }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
            
            
        }
       
    }


#Preview {
    ContentView()
}
