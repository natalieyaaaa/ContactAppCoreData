//
//  ContentView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 02.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingNewContact = false
    
    @FetchRequest(fetchRequest: Contact.all()) private var contacts
    
    var provider = ContactsProvider.shared
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach(contacts) { contact in
                    
                    ZStack(alignment: .leading) {
                        NavigationLink(destination: ContactDetailView()){
                            EmptyView()
                        }
                        .opacity(0)
                        
                        ContactRowView(contact: contact)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isShowingNewContact.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title2)
                    }
                }
            }
            .sheet(isPresented: $isShowingNewContact) {
                NavigationStack {
                    CreateContactView(vm: .init(provider: provider))
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContentView()
}
