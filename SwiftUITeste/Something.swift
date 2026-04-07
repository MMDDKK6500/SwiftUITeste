//
//  Something.swift
//  SwiftUITeste
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 07/04/26.
//

import SwiftUI

struct Something: View {
    @State var name: String = "";
    @State var age: String = "";
    @State var shouldContinue = false;
    @State var shouldError = false;
    
    var body: some View {
        VStack {
            Text("Maybe something")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("Please enter your name:")
            TextField("Ababa", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            Text("Please enter you age:")
            TextField("Huh?", text: $age)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            Button("Continue") {
                if let _ = Int(age) {
                    shouldContinue = true;
                } else {
                    shouldError = true
                }
            }
            .alert("Result", isPresented: $shouldContinue) {
                Button("Ok", role: .cancel) {}
            } message: {
                Text("Hello, " + name + "! You are " + age + " years old!")
            }
            .alert("Result", isPresented: $shouldError) {
                Button("Try again", role: .cancel) {}
            } message: {
                Text("The age you input is not a number!")
            }
            .buttonStyle(.glassProminent)
            
        }
        .padding()
        .padding(.bottom, 50)
    }
}

#Preview {
    Something()
}
