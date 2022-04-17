//
//  VideoModel.swift
//  Africa
//
//  Created by AMAN SHARMA on 16/04/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Compueted Property
    var thumbnail: String {
        "video-\(id)"
    }
}
