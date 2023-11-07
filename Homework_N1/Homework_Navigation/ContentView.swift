//
//  ContentView.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 08.09.2023.
//

import SwiftUI

struct ContentView: View {
    private enum Constants {
        static let phoneContactsLabel = "Contacts"
        static let phoneContactsImage = "person"
        static let favouritesLabel = "Favourites"
        static let favouritesImage = "star"
        static let settingsLabel = "Settings"
        static let settingsImage = "gear"
    }
    
    @EnvironmentObject var route: Route
    
    var body: some View {
        TabView(selection: $route.tabSelection) {
            FavouritesContactsView()
                .tabItem {
                    Label(
                        Constants.favouritesLabel,
                        systemImage: Constants.favouritesImage
                    )
                }
                .tag(0)
            PhoneContactsView()
                .tabItem {
                    Label(
                        Constants.phoneContactsLabel,
                        systemImage: Constants.phoneContactsImage
                    )
                }
                .tag(1)
            SettingsView()
                .tabItem {
                    Label(
                        Constants.settingsLabel,
                        systemImage: Constants.settingsImage
                    )
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
