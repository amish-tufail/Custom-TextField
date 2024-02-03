//
//  CustomTextField.swift
//  CustomTextField
//
//  Created by Amish Tufail on 03/02/2024.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var title: String
    @Binding var isEditing: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 8.0, style: .continuous)
                    .stroke(.black, lineWidth: 1.0)
                    .frame(height: 40.0)
                Text(title)
                    .font(.system(size: isEditing ? 10.0 : 15.0))
                  
                    .padding(10.0)
                    .zIndex(isEditing ? 2.0 : 0.0)
                    .background(
                        RoundedRectangle(cornerRadius: 12.0)
                            .fill(isEditing ? .white : .clear)
                            .opacity(isEditing ? 1.0 : 0.0)
                            .frame(width: 30.0, height: 10)
                    )
                    .offset(y: isEditing ? -20.0 : 0.0)
                TextField("", text: $text) { editing in
                    withAnimation {
                        isEditing = editing || (!text.isEmpty) // when not empty || (text.isEmpty != true)
                    }
                }
                .padding(5.0)
            }
        }
        
    }
}

#Preview {
    CustomTextField(text: .constant(""), title: "Email", isEditing: .constant(false))
}
