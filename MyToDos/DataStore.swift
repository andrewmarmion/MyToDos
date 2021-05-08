//
//  DataStore.swift
//  MyToDos
//
//  Created by Andrew Marmion on 08/05/2021.
//

import Foundation

class DataStore: ObservableObject {
    @Published var toDos: [ToDo] = []

    init() {
        loadToDos()
    }

    func addToDo(_ toDo: ToDo) {

    }

    func uptadeToDo(_ toDo: ToDo) {

    }

    func deleteToDo(at indexSet: IndexSet) {

    }

    func loadToDos() {
        toDos = ToDo.sampleData
    }

    func saveToDos() {
        print("saving toDos to file system eventually")
    }
}
