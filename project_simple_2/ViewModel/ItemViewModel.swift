//
//  ItemViewModel.swift
//  project_simple_2
//
//  Created by Nam on 01/12/2022.
//

import Foundation
import CoreData
import UIKit

struct ItemViewModel {
    var items = [Item]()
    
    var itemData: [NSManagedObject] = []
    
    
    
    mutating func loadItem() {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        // 1.
        let managedContext = appDelegate.persistentContainer.viewContext
        
        // 2.
        let entity = NSEntityDescription.entity(forEntityName: "ItemData", in: managedContext)!
        let item = NSManagedObject(entity: entity, insertInto: managedContext)
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "ItemData")
        do {
            itemData = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        
        
        if(itemData.isEmpty){
            fakeData(object: item, context: managedContext)
        }else{


//            return
        }
        
        for item in itemData {
            
            let id = (item.value(forKey: "id") as? Int) ?? 0
            let title = (item.value(forKey: "title") as? String) ?? ""
            let description = (item.value(forKey: "descriptionItem") as? String) ?? ""
            let isLike = (item.value(forKey: "isLike") as? Bool) ?? false
            let urlImage = (item.value(forKey: "urlImage") as? String) ?? ""
            
            items.append(Item(id: id, title: title, image: urlImage, description: description, isLike: isLike))
        }
        print("users:\(itemData[0].)")
        
        
    }
    
    mutating func fakeData(object: NSManagedObject,context: NSManagedObjectContext)  {
        
        let sampleData = [
            Item(id: 1,title: "Submit reimbursement report", image: "https://images.pexels.com/photos/6499190/pexels-photo-6499190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description: "Don't forget about taxi receipts"),
            Item(id: 2,title: "Code review", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Check tech specs in shared folder"),
            Item(id: 3,title: "Pick up new contacts", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Optometrist closes at 6:00PM"),
            
        ]
        for item in sampleData {
            object.setValue(item.id, forKey: "id")
            object.setValue(item.title, forKey: "title")
            object.setValue(item.description, forKey: "descriptionItem")
            object.setValue(item.image, forKey: "urlImage")
            object.setValue(item.isLike ?? false, forKey: "isLike")
            do {
                try context.save()
                itemData.append(object)
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
        }
        
        
    }
    
}
