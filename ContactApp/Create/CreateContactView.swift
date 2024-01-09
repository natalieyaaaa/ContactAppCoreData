//
//  CreateContactView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 04.01.2024.
//

import SwiftUI

struct CreateContactView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var vm: EditContactViewModel
    
    var body: some View {
        List {
            
            Section("General") {
                
                TextField("Name", text: $vm.contact.name)
                    .keyboardType(.namePhonePad)
                
                TextField("Email", text: $vm.contact.email)
                    .keyboardType(.emailAddress)
                
                TextField("Phone Number", text: $vm.contact.phoneNumber)
                    .keyboardType(.phonePad)
                
                DatePicker("Birthday", selection: $vm.contact.dob, displayedComponents: [.date])
                    .datePickerStyle(.compact)
                
                Toggle("Favourite", isOn: $vm.contact.isFavourite)
            }
            
            Section("Notes") {
                TextField("Slava Ukraine", text: $vm.contact.notes, axis: .vertical)
            }
        }
        .navigationTitle("Name Here")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    do {
                        try vm.save()
                        dismiss()
                    } catch {
                        print("Error saving edited data")
                    }
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        CreateContactView(vm: .init(provider: .shared))
    }
}
