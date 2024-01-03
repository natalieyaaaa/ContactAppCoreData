//
//  ContentView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 02.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingNewContact = false
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach((0...10), id: \.self) { item in
                    
                    ZStack(alignment: .leading) {
                        NavigationLink(destination: ContactDetailView()){
                            EmptyView()
                        }
                        .opacity(0)
                        
                        ContactRowView()
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
                    CreateContactView()
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContentView()
}
