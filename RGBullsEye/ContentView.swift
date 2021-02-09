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
    let bTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    
    // MARK:- BODY
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    Text("Match this color")
                        .padding()
                }//: VSTACK
                VStack {
                    Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                    Text("R: 127 G: 127 B: 127")
                        .padding()
                }//: VSTACK
            }//: HSTACK
            Button(action: {}) {
                Text("Hit Me")
            }
            Slider(value: .constant(0.5))
        }//: VSTACK
    }
}

// MARK:- PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
