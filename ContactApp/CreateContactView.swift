//
//  CreateContactView.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 04.01.2024.
//

import SwiftUI

struct CreateContactView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        List {
            
            Section("General") {
                
                TextField("Name", text: .constant(""))
                    .keyboardType(.namePhonePad)
                
                TextField("Email", text: .constant(""))
                    .keyboardType(.emailAddress)
                
                TextField("Phone Number", text: .constant(""))
                    .keyboardType(.phonePad)
                
                DatePicker("Birthday", selection: .constant(.now), displayedComponents: [.date])
                    .datePickerStyle(.compact)
                
                Toggle("Favourite", isOn: .constant(true))
            }
            
            Section("Notes") {
                TextField("Slava Ukraine", text: .constant(""), axis: .vertical)
            }
        }
        .navigationTitle("Name Here")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    dismiss()
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
        CreateContactView()
    }
}
