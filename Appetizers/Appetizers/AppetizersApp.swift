//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-19.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
