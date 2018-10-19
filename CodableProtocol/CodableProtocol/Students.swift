//
//  Students.swift
//  CodableProtocol
//
//  Created by van.tien.tu on 10/19/18.
//  Copyright © 2018 van.tien.tu. All rights reserved.
//

import UIKit

class Students: Codable {
    
    class Branch: Codable {
        var subject: Int?
        var totalStudents: Int?
        var totalBooks: Int?
        
        private enum CodingKeys: String, CodingKey {
            case subject
            case totalStudents = "total_students"
            case totalBooks = "total_books"
        }
    }
    
    class Subject: Codable {
        var subjectId: Int?
        var name: String?
        var pratical: Bool?
        var praticalDays: [String]
        
        private enum CodingKeys: String, CodingKey {
            case subjectId = "subject_id"
            case name
            case pratical
            case praticalDays = "pratical_days"
        }
    }
    var branch: Branch
    var subjects: [Subject]
}
