//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
