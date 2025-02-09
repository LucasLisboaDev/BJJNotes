//
//  LoginView.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 2/6/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                //  Header
                HeaderView(title: "BJJ Notes", subtitle: "Upload Your Notes \n and get FeedBack", angle: 35, background: .purple)
                
               
                
                // Login  Form
                Form {
                    
                    if !viewModel.ErrorMessage.isEmpty {
                        Text(viewModel.ErrorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Addredd ", text:  $viewModel.email )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    ButtonView(
                        text: " Log In",
                        background: .blue)
                    {
                        // Closure Attempt Log In
                        viewModel.login()
                        
                    }
                    .padding()
                }
                .offset(y: -50 )
                
                // Create Account
                
                VStack {
                    Text("New Around Here?")
                    NavigationLink("Create An account", destination: RegisterView() )
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
                
            }
        }
        
    }
}



#Preview {
    LoginView()
}
