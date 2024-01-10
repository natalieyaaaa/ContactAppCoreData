//
//  ContactDetailView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 04.01.2024.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Contact
    
    var body: some View {
        List {
            Section("General") {
                
                LabeledContent{
                    Text(contact.name)
                } label: {
                    Text("Email")
                }
                
                LabeledContent{
                    Text(contact.phoneNumber)
                } label: {
                    Text("Phone Number")
                }
                
                LabeledContent{
                    Text(contact.dob, style: .date)
                } label: {
                    Text("Birthday")
                }
            }
            
            Section("Notes") {
                Text(contact.notes)
            }
        }
        .navigationTitle(contact.formattedName)
    }
}

//#Preview {
//    NavigationStack {
//        ContactDetailView()
//    }
//}
