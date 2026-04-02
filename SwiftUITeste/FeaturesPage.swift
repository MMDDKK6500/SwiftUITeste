//
//  FeaturesPage.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 02/04/26.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
                .padding(.top, 40)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A very good descriotion that is multiline and also very cool")
            FeatureCard(iconName: "quote.bubble.fill", description: "A small thing")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
}
