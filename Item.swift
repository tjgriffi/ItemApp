//
//  Item.swift
//  ItemApp
//
//  Created by Terrance Griffith on 4/27/26.
//

import Foundation

class Item: Identifiable {
    var name: String
    let id: UUID
    
    init(name: String, id: UUID = UUID()) {
        self.name = name
        self.id = id
    }
    
    static var examples: [Item] = {
        [Item(name: "first"), Item(name: "second"), Item(name: "third"), Item(name: "fourth")]
    }()
}


