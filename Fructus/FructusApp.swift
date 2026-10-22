//
//  FructusApp.swift
//  Fructus
//
//  Created by MacBook Pro on 20/10/2026.
//

import SwiftUI
import CoreData

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()

            }
                
        }
    }
}
