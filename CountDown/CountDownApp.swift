//
//  CountDownApp.swift
//  CountDown
//
//  Created by Tri Pham on 7/28/22.
//

import SwiftUI

@main
struct CountDownApp: App {
    let persistenceController = PersistenceController.shared
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
