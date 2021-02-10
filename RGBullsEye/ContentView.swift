//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Joshua Basche on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    // MARK:- VARIABLES
    @State var rGuess: Double
    @State var bGuess: Double
    @State var gGuess: Double
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    // MARK:- BODY
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    Text("Match this color")
                        .padding()
                }//: VSTACK
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    Text("R: \(Int(rGuess * 255)) G: \(Int(gGuess * 255)) B: \(Int(bGuess * 255))")
                        .padding()
                }//: VSTACK
            }//: HSTACK
            Button(action: {}) {
                Text("Hit Me")
            }
            ColorSlider(value: $rGuess, textColor: .red)
            ColorSlider(value: $gGuess, textColor: .green)
            ColorSlider(value: $bGuess, textColor: .blue)
        }//: VSTACK
    }
}

// MARK:- PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, bGuess: 0.5, gGuess: 0.5)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

struct ColorSlider: View {
    //MARK: - VARIABLES
    @Binding var value: Double
    var textColor: Color
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }//: HSTACK - RED
        .padding(.horizontal)
    }
}
