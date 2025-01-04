//
//  ContentView.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // Signed in state
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
