//
//  ItemFunction.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import Foundation

class ItemFunctions {
    static func createItem(itemModel: ItemModel) {
        
    }
    
    static func readItems(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.itemModels.count == 0 {
                Data.itemModels.append(ItemModel(title: "Item 1"))
                Data.itemModels.append(ItemModel(title: "Item 2"))
                Data.itemModels.append(ItemModel(title: "Item 3"))
            }
            
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    static func updateItem(itemModel: ItemModel) {
        
    }
    
    static func deleteItem(itemModel: ItemModel) {
        
    }
}
