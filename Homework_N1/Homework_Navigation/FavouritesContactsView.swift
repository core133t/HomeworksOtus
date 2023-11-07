//
//  FavouritesContactsView.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 09.09.2023.
//

import SwiftUI

struct FavouritesContactsView: View {
    @EnvironmentObject var route: Route
    @EnvironmentObject var contactsViewModel: ContactsViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("FavouritesView").font(.largeTitle)
                Button(action: {
                    route.contactId = contactsViewModel.contacts[0].id
                    route.tabSelection = 1
                }) {
                    Text("Alisa contact").font(.largeTitle)
                }
            }
        }
    }
}
