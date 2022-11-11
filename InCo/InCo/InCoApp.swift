//
//  InCoApp.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI

@main
struct InCoApp: App {
    
    let migrator = Migrator()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
