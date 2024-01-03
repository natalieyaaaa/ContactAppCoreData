//
//  ContactRow.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 03.01.2024.
//

import SwiftUI

struct ContactRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Text("Name")
                .font(.system(size: 26, design: .rounded)).bold()
            
            Text("Email")
                .font(.callout.bold())
            
            Text("Phone Number")
                .font(.callout.bold())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing) {
            Button {
                // favourite
            } label: {
                Image(systemName: "star")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundStyle(.gray.opacity(0.3))
            }
            .buttonStyle(.plain)
        }    }
}

#Preview {
    ContactRowView()
}
