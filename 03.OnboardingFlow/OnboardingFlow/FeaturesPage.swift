//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by ycw012 on 3/30/26.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
       
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .foregroundStyle(.white)
                .padding(.top, 90)
            
            
            FeatureCard (iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "quote.bubble", description: "Short summary")
            
            FeatureCard(iconName: "arrow.up.folder.fill", description: "      공유하기      ")
            
            Spacer()
            
            
        }
        .padding()
       
        }
        
        
    }


#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
}
