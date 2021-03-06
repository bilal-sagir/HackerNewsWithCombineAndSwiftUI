//
//  Story.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import Foundation

struct Story: Codable {
    let id: Int
    let title: String
    let url: String
    
}

extension Story {
    static func placeholder() -> Story{
        return Story(id: 0, title: "N/A", url: "")
    }
}
