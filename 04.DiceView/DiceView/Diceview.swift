//
//  Diceview.swift
//  DiceView
//
//  Created by ycw012 on 3/31/26.
//

import SwiftUI

 

struct Diceview: View {
    
    @State private var numberOfPips: Int = 1
    
    var body: some View {
      
        VStack{
            
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
               
            
            
            Button("Roll") {
                withAnimation(.smooth) {
                    numberOfPips = Int.random(in: 1...6)
                    }
           
            }
            .buttonStyle(.bordered)
            
        }
        
        
    }
}

#Preview {
    Diceview()
}
