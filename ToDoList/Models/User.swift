//
//  User.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
