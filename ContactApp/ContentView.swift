//
//  ContentView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 02.01.2024.
//

import SwiftUI

struct ContentView: View {
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
                    
                } .navigationTitle("Contacts")
            }
        }
    }
}

#Preview {
    ContentView()
}
