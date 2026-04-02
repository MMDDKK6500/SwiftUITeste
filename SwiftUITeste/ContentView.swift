//
//  ContentView.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 01/04/26.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    
    @State var contador = 0;
    
    var body: some View {
        TabView{
            Tab("Welcome", systemImage: "figure.2.and.child.holdinghands") {
                WelcomePage()
            }
            Tab("Features", systemImage: "chart.bar.horizontal.page.fill") {
                FeaturesPage()
            }
            Tab("Forecast", systemImage: "sun.max.fill") {
                Forecast()
            }
            Tab("Nothing", systemImage: "questionmark.app.dashed") {
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
