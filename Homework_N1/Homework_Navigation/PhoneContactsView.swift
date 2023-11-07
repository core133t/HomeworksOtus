//
//  PhoneContactsView.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 08.09.2023.
//

import SwiftUI

struct Contact: Identifiable {
    let name: String
    let id: UUID = .init()
}

final class ContactsViewModel: ObservableObject {
    @State var contactsHeaderTitle = "Contacts"
    
    @Published private(set) var contacts = [
        Contact(name: "Alisa"),
        Contact(name: "Mark"),
        Contact(name: "Oleg"),
        Contact(name: "Hugo")
    ]
}

struct PhoneContactsView: View {
    @EnvironmentObject var contactsViewModel: ContactsViewModel
    @EnvironmentObject var route: Route
    
    var body: some View {
        NavigationView {
            List (contactsViewModel.contacts) { contact in
                NavigationLink (
                    destination: Text(contact.name).font(.largeTitle),
                    tag: contact.id,
                    selection: $route.contactId
                ) {
                    Text(contact.name).font(.largeTitle)
                }
            }
            .navigationTitle(contactsViewModel.contactsHeaderTitle)
        }
        .onDisappear {
            route.contactId = nil
        }
    }
}
