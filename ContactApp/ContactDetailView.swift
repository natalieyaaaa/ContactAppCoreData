//
//  ContactDetailView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 04.01.2024.
//

import SwiftUI

struct ContactDetailView: View {
    var body: some View {
        List {
            Section("General") {
                
                LabeledContent{
                    Text("Email here")
                } label: {
                    Text("Email")
                }
                
                LabeledContent{
                    Text("Phone number here")
                } label: {
                    Text("Phone Number")
                }
                
                LabeledContent{
                    Text(.now, style: .date)
                } label: {
                    Text("Birthday")
                }
            }
            
            Section("Notes") {
                Text("Slava Ukraine")
            }
        }
        .navigationTitle("Name Here")
    }
}

#Preview {
    NavigationStack {
        ContactDetailView()
    }
}
