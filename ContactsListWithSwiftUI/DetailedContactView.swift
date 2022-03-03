//
//  DetailedContactView.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import SwiftUI

struct DetailedContactView: View {
    
    let humans: Human
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.cyan)
                Text("\(humans.phoneNumber)")
            }
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.cyan)
                Text("\(humans.email)")
            }
        } .listStyle(.grouped)
            .navigationTitle("\(humans.fullName)")
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(humans: Human.getPerson()
                                .first!)
    }
}
