//
//  MainContactView.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import SwiftUI

struct MainContactView: View {
    
    let humans: [Human]
    
    var body: some View {
        NavigationView{
            List(humans, id: \.name) {
                human in NavigationLink(destination: DetailedContactView(humans: human)) {
                    Text("\(human.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct MainContactView_Previews: PreviewProvider {
    static var previews: some View {
        MainContactView(humans: Human.getPerson())
    }
}
