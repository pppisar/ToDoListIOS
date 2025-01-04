//
//  RegistrationViewViewModel.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import Foundation

class RegistrationViewViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
}
