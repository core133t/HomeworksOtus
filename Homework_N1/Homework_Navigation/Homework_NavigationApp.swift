//
//  Homework_NavigationApp.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 08.09.2023.
//

import SwiftUI

@main
struct Homework_NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Route())
                .environmentObject(ContactsViewModel())
        }
    }
}
