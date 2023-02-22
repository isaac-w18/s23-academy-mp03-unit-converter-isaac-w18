//
//  ContentView.swift
//  mp03
//
//  Created by Isaac Frank on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var input: Double = 0.0
    @State private var inputUnit = "mL"
    @State private var outputUnit = "mL"
    
    let units = ["mL", "Liters", "Cups", "Pints", "Gallons"]
    let conversions = ["mL": 1.0,
                    "Liters": 1000.0,
                    "Cups": 236.588,
                    "Pints": 473.176,
                    "Gallons": 3785.41]
    
    var output: Double {
        let milileters = input * (conversions[inputUnit] ?? 0)
        return milileters / (conversions[outputUnit] ?? 1.0)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Input Value",
                              value: $input,
                              format: .number)
                    .keyboardType(.decimalPad)
                    Picker("Input Units", selection: $inputUnit) {
                        Text("mL").tag("mL")
                        Text("Liters").tag("Liters")
                        Text("Cups").tag("Cups")
                        Text("Pints").tag("Pints")
                        Text("Gallons").tag("Gallons")
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Input Value and Unit")
                }
                
                Section {
                    Picker("Output Units", selection: $outputUnit) {
                        Text("mL").tag("mL")
                        Text("Liters").tag("Liters")
                        Text("Cups").tag("Cups")
                        Text("Pints").tag("Pints")
                        Text("Gallons").tag("Gallons")
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Output Unit")
                }
                
                Section {
                    Text("\(output)")
                } header: {
                    Text("Output")
                }
            }
            .navigationTitle("Volume Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
