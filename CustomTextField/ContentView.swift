//
//  ContentView.swift
//  CustomTextField
//
//  Created by Amish Tufail on 03/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State  var isEditing: Bool = false
    
    var body: some View {
        VStack {
            CustomTextField(text: $text, title: "Email", isEditing: $isEditing)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

