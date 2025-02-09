//
//  ContentView.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 1/30/25.
//

import SwiftUI

struct MainUserView : View {
    
    let points = String(MockData.sampleStudent.points)
    
    var body: some View {
        LoginView()
    }
}

#Preview {
    MainUserView()
}
