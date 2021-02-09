//
//  RGBullsEyeApp.swift
//  RGBullsEye
//
//  Created by Joshua Basche on 2/8/21.
//

import SwiftUI

@main
struct RGBullsEyeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5, bGuess: 0.5,
                        gGuess: 0.5)
        }
    }
}
