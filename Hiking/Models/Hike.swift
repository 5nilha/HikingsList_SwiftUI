//
//  Hike.swift
//  Hiking
//
//  Created by Fabio Quintanilha on 11/25/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import Foundation

struct Hike {
    let id: String
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    static func all() -> [Hike] {
        return [Hike(id: "1", name: "Salmonberry Trail", imageURL: "sal", miles: 6),
                Hike(id: "2", name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
                Hike(id: "3", name: "Tamanawas", imageURL: "tam", miles: 5)]
    }
}
