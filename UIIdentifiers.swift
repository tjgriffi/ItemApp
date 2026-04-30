//
//  UIIdentifiers.swift
//  ItemApp
//
//  Created by Terrance Griffith on 4/28/26.
//

import Foundation

enum UIIdentifiers {
    
    enum AddNewItemScreen {
        
    }
    
    enum ItemListScreen {
        static let addButton = "ItemListScreen.button.add"
        static let deleteButton = "ItemListScreen.button.delete"
        static let itemList = "ItemListScreen.itemList"
        
        static func item(_ id: UUID) -> String {
            "ItemListScreen.item.\(id.uuidString)"
        }
    }
    
}
