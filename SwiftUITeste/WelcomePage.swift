//
//  WelcomePage.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 02/04/26.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 80))
                    .foregroundStyle(Color.white)
            }
            
            Text("Welcome to My App!")
                .font(Font.largeTitle)
                .fontWeight(.semibold)
            Text("A Description Text")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
