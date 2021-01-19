//
//  ConverterManager.swift
//  Converter
//
//  Created by Nico Cobelo on 19/01/2021.
//

import Foundation

struct ConverterManager {
    func convert(_ inputValue: String, in inputUnit: String, to outputUnit: String) -> Double {
        var outputValue: Double {
            let userValue = Double(inputValue) ?? 0
            var userValueInFeet: Double {
                switch inputUnit {
                case "m":
                    return userValue * 3.28
                case "km":
                    return userValue * 3280.84
                case "yd":
                    return userValue * 3
                case "mi":
                    return userValue * 5280
                default:
                    return userValue
                }
            }
            var resultValue: Double {
                switch outputUnit {
                case "m":
                    return userValueInFeet * 0.3048
                case "km":
                    return userValueInFeet * 0.000305
                case "yd":
                    return userValueInFeet * 0.33
                case "mi":
                    return userValueInFeet * 0.000189
                default:
                    return userValueInFeet
                }
            }
            return resultValue
        }
        return outputValue
    }
}
