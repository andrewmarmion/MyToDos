//
//  ToDo.swift
//  MyToDos
//
//  Created by Andrew Marmion on 08/05/2021.
//

import Foundation

struct ToDo: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false

    static var sampleData: [ToDo] {
        [
            ToDo(name: "Get Groceries"),
            ToDo(name: "Make Dr. Appointment", completed: true)
        ]
    }
}
