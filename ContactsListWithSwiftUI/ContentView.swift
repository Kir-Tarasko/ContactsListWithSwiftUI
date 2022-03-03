//
//  ContentView.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import SwiftUI

struct ContentView: View {
    let humans: [Human]
    var body: some View {
        TabView{
            MainContactView(humans: humans)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactListView(humans: humans)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(humans: Human.getPerson())
    }
}
