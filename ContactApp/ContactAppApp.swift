//
//  ContactAppApp.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 02.01.2024.
//

import SwiftUI

@main
struct ContactAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, ContactsProvider.shared.viewContext)
        }
    }
}
