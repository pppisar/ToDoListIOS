//
//  RegistrationView.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        
        Form {
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(DefaultTextFieldStyle())
            
            Button {
                // Attempt to register
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color.blue)
                    Text("Register")
                        .foregroundColor(Color.white)
                        .bold()
                }
            }
        }
        
        Spacer()
    }
}

#Preview {
    RegistrationView()
}
