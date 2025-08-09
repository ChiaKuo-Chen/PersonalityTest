//
//  PersonalityTestApp.swift
//  PersonalityTest
//
//  Created by 陳嘉國 on 2024/11/21.
//

import SwiftUI

@main
struct PersonalityTestApp: App {
    
    @StateObject private var router = Router()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
