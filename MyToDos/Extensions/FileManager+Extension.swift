//
//  FileManager+Extension.swift
//  MyToDos
//
//  Created by Andrew Marmion on 09/05/2021.
//

import Foundation

let fileName = "ToDos.json"

extension FileManager {
    static var docDirURL: URL {
        return Self.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    func saveDocument(contents: String, docName: String, completion: (ToDoError?) -> Void) {
        let url = Self.docDirURL.appendingPathComponent(docName)
        do {
            try contents.write(to: url, atomically: true, encoding: .utf8)
        } catch {
            completion(.saveError)
        }
    }

    func readDocument(docName: String, completion: (Result<Data, ToDoError>) -> Void) {
        let url = Self.docDirURL.appendingPathComponent(docName)
        do {
            let data = try Data(contentsOf: url)
            completion(.success(data))
        } catch  {
            completion(.failure(.readError))
        }
    }

    func docExist(named docName: String) -> Bool {
        fileExists(atPath: Self.docDirURL.appendingPathComponent(docName).path)
    }
}

