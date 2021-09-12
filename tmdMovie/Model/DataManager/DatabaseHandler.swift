//
//  DatabaseHandler.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 11/9/21.
//

import UIKit
import CoreData

// MARK: - Database Local File Configuration

class DatabaseHandler {
//    Singleton
    static let shared = DatabaseHandler()
    
    private let viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func add<T: NSManagedObject>(_ type: T.Type) -> T? {
        guard let entityName = T.entity().name else {return nil}
        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: viewContext) else {return nil}
        let object = T(entity: entity, insertInto: viewContext)
        return object
    }
    
    func save() {
        do {
            try viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
