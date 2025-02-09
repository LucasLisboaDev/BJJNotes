//
//  Student.swift
//  BJJNotes
//
//  Created by Lucas Lisboa  on 1/30/25.
//

import Foundation
import SwiftUI

struct Student: Hashable, Identifiable {
    
    let id = UUID()
    let image: String
    let name: String
    let age: Int
    let belt: String
    var Class: String
    var points: Int
}

struct MockData {
    static let sampleStudent = Student(image: "student-picture",
                                       name: "Charles",
                                       age: 12,
                                       belt: "Gray",
                                       Class: "Advanced",
                                       points: 15)
    
    
}

