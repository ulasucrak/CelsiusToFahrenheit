//
//  ContentView.swift
//  CelciusToFahrenheit
//
//  Created by Ulaş Uçrak on 4.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State var celsius: String = ""
    @State var fahrenheit: String = ""
    var body: some View {
        VStack {
            HStack{
                Text("Celcius")
                    .frame(width: 100, alignment: .leading)
                TextField("Enter celsius", text: $celsius)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: .infinity)
                    .keyboardType( .decimalPad)
            }
            
            Divider()
            
            HStack{
                Text("Fahrenheit")
                    .frame(width: 100, alignment: .leading)
                Text(fahrenheit)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
            
            Button(action : convertTemperature){
                Text("Convert")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
        }
        .padding()
    }
    
    private func convertTemperature() {
            guard let celsiusValue = Double(celsius) else {
                fahrenheit = "Invalid input"
                return
            }
            let fahrenheitValue = (celsiusValue * 9/5) + 32
            fahrenheit = String(format: "%.2f", fahrenheitValue)
    }
}

#Preview {
    ContentView()
}
