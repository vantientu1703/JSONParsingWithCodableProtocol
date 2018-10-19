//
//  User.swift
//  CodableProtocol
//
//  Created by van.tien.tu on 10/19/18.
//  Copyright © 2018 van.tien.tu. All rights reserved.
//

import UIKit

class Users: Codable {
    class User: Codable {
        var userId: Int?
        var id: Int?
        var title: String?
        var completed: Bool?
        
        private enum CodingKeys: String, CodingKey {
            case userId = "userId"
            case id = "id"
            case title = "title"
            case completed = "completed"
        }
    }
    let users: [User]
}
