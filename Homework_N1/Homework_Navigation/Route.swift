//
//  Route.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 07.11.2023.
//

import Foundation

final class Route: ObservableObject {
    @Published var tabSelection = 0
    @Published var contactId: UUID?
}
