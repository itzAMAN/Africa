//
//  CodableBundleExpansion.swift
//  Africa
//
//  Created by AMAN SHARMA on 15/04/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //: 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate the \(file) in the bundle.")
        }
        
        //: 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the bundle.")
        }
        
        //: 3. Create a Decoder
        let decoder = JSONDecoder()
        
        //: 4. Create a property for the decoder.
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from the bundle.")
        }
        
        //: 5. Return the ready-to-use data
        return loaded
    }
}
