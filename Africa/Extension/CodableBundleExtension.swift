//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Charles Michael on 9/26/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
//        1 Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
//        2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
//        3. Create a decoder
        let decoder = JSONDecoder()
        
//        4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
//        return the ready to use data
        return loaded
    }
}
