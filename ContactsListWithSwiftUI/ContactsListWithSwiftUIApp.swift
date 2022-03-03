//
//  ContactsListWithSwiftUIApp.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import SwiftUI

@main
struct ContactsListWithSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(humans: Human.getPerson())
        }
    }
}
