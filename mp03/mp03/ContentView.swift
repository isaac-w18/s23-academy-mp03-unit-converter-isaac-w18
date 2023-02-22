//
//  ContentView.swift
//  mp03
//
//  Created by Isaac Frank on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var input: Double = 0.0
    
    var body: some View {
        Form {
            Section {
                TextField("Input Value",
                          value: $input,
                          format: Double)
            }
        }
        .navigationTitle("Volume Conversion")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
