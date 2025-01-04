//
//  RegistrationView.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import SwiftUI

struct RegistrationView: View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        
        Form {
            TextField("Full Name", text: $fullName)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
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
    }
}

#Preview {
    RegistrationView()
}
