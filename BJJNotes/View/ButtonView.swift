//
//  ButtonView.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 2/7/25.
//

import SwiftUI

struct ButtonView: View {
    @State var text: String
    @State var background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(text)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
   
    ButtonView(text: "Text Example", background: .blue) {
        //action 
    }
}
