//
//  RegisterView.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 2/6/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack{
            HeaderView(title: "Register Yourself", subtitle: "", angle: 20, background: .blue)
            
            Spacer()
            
            
            Form {
                TextField(" Full Name ", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                
                TextField(" Email ", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                
                SecureField(" Password ", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                
                ButtonView(text: "Create The Account",
                           background: .green) {
                    // Attempt creating the account
                }
                           .padding()
                
            }.offset(y: -100)
            
            
            
            Spacer()
            
        }
        
    }
}

#Preview {
    RegisterView()
}
