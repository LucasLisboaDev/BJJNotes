//
//  HeaderView.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 2/6/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    
    var body: some View {
        VStack{
            // Header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                    
           
            
            VStack{
                Text( title )
                    .font(.system(size: 45))
                    .foregroundStyle(Color.white)
                    .bold()
                Text( subtitle )
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 70)
                
            }
            .frame(width: UIScreen.main.bounds.width * 3 , height: 320)
            .offset(y: -120)
            
            Spacer()
            
            // Login Form
           
                
            }
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .orange)
}
