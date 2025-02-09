//
//  LoginViewModel .swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 2/9/25.
//

import Foundation


class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password =  ""
    @Published var ErrorMessage =  ""
    
    
    init() {
    }
    
    
    func login() {
        
        guard validate() else {
            return
        }
        // try to log the user in
        
        
    }
    
    func validate() -> Bool {
        
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            ErrorMessage = " Please fill in all fields "
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            ErrorMessage = "Please Enter a valid email. "
            return false
        }
        
        
     return true
    }
    
    
}
