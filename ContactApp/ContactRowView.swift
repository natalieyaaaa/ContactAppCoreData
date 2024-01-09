//
//  ContactRow.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 03.01.2024.
//

import SwiftUI

struct ContactRowView: View {
    
    @Environment(\.managedObjectContext) private var moc
    
    @ObservedObject var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Text("\(contact.isBirthday ? "🎈" : "")\(contact.name)")
                .font(.system(size: 26, design: .rounded)).bold()
            
            Text(contact.email)
                .font(.callout.bold())
            
            Text(contact.phoneNumber)
                .font(.callout.bold())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing) {
            Button {
                toggleFave()
            } label: {
                Image(systemName: "star")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundStyle(contact.isFavourite ? .yellow : .gray.opacity(0.3))
            }
            .buttonStyle(.plain)
        }
    }
}

extension ContactRowView {
    
    private func toggleFave() {
        contact.isFavourite.toggle()
        do {
            if moc.hasChanges {
               try moc.save()
            }
        } catch {
            print("Error saving toggled favourite ")
        }
    }
}

//#Preview {
//    ContactRowView()
//}
