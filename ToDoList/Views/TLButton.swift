//
//  TLButton.swift
//  ToDoList
//
//  Created by Oleksii Pysarenko on 04.01.2025.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let foreground: Color
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(foreground)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Click", foreground: .white, background: .pink) {
        // Action
    }
}
