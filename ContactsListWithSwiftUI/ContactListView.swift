//
//  ContactListView.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let humans: [Human]
    
    var body: some View {
        NavigationView{
            List(humans, id: \.name) {
                human in
                Section(header: Text("\(human .fullName)")) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.cyan)
                        Text("\(human.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.cyan)
                        Text("\(human.email)")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(humans: Human.getPerson())
    }
}
