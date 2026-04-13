//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by ycw012 on 3/30/26.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                
               
                
                Rectangle()
                    .cornerRadius(30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(Color(.pink).opacity(0.7))
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
                
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .opacity(0.9)
                
            
            Text("Description text")
                .font(.title2)
                
            
        }
        
        .padding()
      
        
    }
}

#Preview {
    WelcomePage()
}
