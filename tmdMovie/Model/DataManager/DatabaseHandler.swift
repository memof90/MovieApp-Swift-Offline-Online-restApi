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
    
    private var viewContext : NSManagedObjectContext!
    
    static let shared = DatabaseHandler()

    init() {
        viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }

    
    func add<T: NSManagedObject>(_ type: T.Type) -> T? {
        guard let entityName = T.entity().name else {return nil}
        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: viewContext) else {return nil}
        let object = T(entity: entity, insertInto: viewContext)
        return object
    }
    
    func fetch<T: NSManagedObject>(_ type: T.Type) -> [T] {
        let request = T.fetchRequest()
        do {
            let result = try viewContext.fetch(request)
            return result as! [T]
        } catch {
            print(error.localizedDescription)
            return []
        }
    
       
    }
    
    func fetchSearch<T: NSManagedObject>(search: String, _ type: T.Type) -> [T] {
        var predicate: NSPredicate = NSPredicate()
        predicate = NSPredicate(format: "original_title == %@", search)
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Popular")
        fetchRequest.predicate = predicate
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result as! [T]
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    
    func save() {
        viewContext.perform {
            do {
                try self.viewContext.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
//    func delete<T: NSManagedObject>(object: T) {
//        viewContext.delete(object)
//        save()
//    }
    
    
}
