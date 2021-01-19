//
//  ContentView.swift
//  Converter
//
//  Created by Nico Cobelo on 19/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    var converterManager = ConverterManager()
    @State private var inputValue = ""
    @State private var chosenInputUnit = 2
    @State private var chosenOutputUnit = 2
    let distanceUnits = ["m", "km", "ft", "yd", "mi"]
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Choose the unit you want to convert from")) {
                    TextField("Input Value", text: $inputValue)
                        .keyboardType(.decimalPad)
                    Picker("Distance units", selection: $chosenInputUnit) {
                        ForEach(0 ..< distanceUnits.count) {
                            Text("\(self.distanceUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }.textCase(nil)
                
                Section(header: Text("Choose the unit you want to convert to")) {
                    Text("\(converterManager.convert(inputValue, in: distanceUnits[chosenInputUnit], to: distanceUnits[chosenOutputUnit]), specifier: "%.5f")")
                    Picker("Distance units", selection: $chosenOutputUnit) {
                        ForEach(0 ..< distanceUnits.count) {
                            Text("\(self.distanceUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }.textCase(nil)
            }
            .navigationBarTitle("Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
