//
//  ItemViewModel.swift
//  ItemApp
//
//  Created by Terrance Griffith on 4/27/26.
//

import Foundation

@Observable
final class ItemViewModel {
    
    var items: [Item] = Item.examples
    var deleteDisabled: Bool = false
    var addDisabled: Bool = true
    
    func deleteLastItem() {
        
        guard !items.isEmpty else { return }
        
        items.removeLast()
        deleteDisabled = items.isEmpty
        addDisabled = items.count == Item.examples.count
    }
    
    func addItem() {
        let count = items.count
        guard count < Item.examples.count else { return }
        
        items.append(Item.examples[count])
        
        deleteDisabled = items.isEmpty
        addDisabled = items.count == Item.examples.count
    }
}
