//
//  ViewController.swift
//  CodableProtocol
//
//  Created by van.tien.tu on 10/19/18.
//  Copyright © 2018 van.tien.tu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let path = Bundle.main.path(forResource: "user", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let model = try decoder.decode(Users.self, from: data)
                print(model.users)
            } catch let parsingErrors {
               print(parsingErrors.localizedDescription)
            }
        }
        
        if let path = Bundle.main.path(forResource: "students", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let model = try decoder.decode(Students.self, from: data)
                print(model)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}

