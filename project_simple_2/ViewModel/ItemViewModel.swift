//
//  ItemViewModel.swift
//  project_simple_2
//
//  Created by Nam on 01/12/2022.
//

import Foundation
import CoreData
import UIKit

class ItemViewModel {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var items = [Item]()
    
    var itemData: [ItemData] = []
    
    func getAllItem()  {
        print("call getAllItem")
        do {
            itemData = try context.fetch(ItemData.fetchRequest())
            for item in itemData {
                
                let id = (item.value(forKey: "id") as? Int) ?? 0
                let title = (item.value(forKey: "title") as? String) ?? ""
                let description = (item.value(forKey: "descriptionItem") as? String) ?? ""
                let isLike = (item.value(forKey: "isLike") as? Bool) ?? false
                let urlImage = (item.value(forKey: "urlImage") as? String) ?? ""
                
                items.append(Item(id: id, title: title, image: urlImage, description: description, isLike: isLike))
            }
            
            if(itemData.isEmpty){
                
                mockItem()
                
            }else{
                for item in itemData {
                    print("itemData: \(item)")
                }
                
                return
            }
            
        } catch  {
            print("Could not fetch. \(error)")
        }
        
        
        
    }
    
    
    func mockItem()  {
        print("call mockItem")
        let listItem = Item.sampleData
        for item in listItem {
            let newItem = ItemData(context: context)
            newItem.id = Int16(item.id ?? 0)
            newItem.title = item.title
            newItem.isLike = item.isLike ?? false
            newItem.urlImage = item.image
            newItem.descriptionItem = item.description
        }
        
        
        do {
            try context.save()
            getAllItem()
        } catch  {
            print("Could not add item. \(error)")
        }
    }
    
    
    func likeFunc(item: ItemData, isLike: Bool)  {
        
        item.isLike = isLike
        
        do {
            try context.save()
            getAllItem()
        } catch  {
            print("Could not save item. \(error)")
        }
    }
    
}
