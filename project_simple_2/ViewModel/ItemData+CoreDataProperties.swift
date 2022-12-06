//
//  ItemData+CoreDataProperties.swift
//  project_simple_2
//
//  Created by Nam on 06/12/2022.
//
//

import Foundation
import CoreData


extension ItemData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemData> {
        return NSFetchRequest<ItemData>(entityName: "ItemData")
    }

    @NSManaged public var id: Int16
    @NSManaged public var title: String?
    @NSManaged public var descriptionItem: String?
    @NSManaged public var urlImage: String?
    @NSManaged public var isLike: Bool

}

extension ItemData : Identifiable {

}
