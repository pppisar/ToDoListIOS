//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete To Do Item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
