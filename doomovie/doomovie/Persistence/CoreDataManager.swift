//
//  CoreDataManager.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import CoreData
import SwiftUI

class CoreDataManager{
    static let shared = CoreDataManager()
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                print("Core Data store failed: \(error.localizedDescription)")
            }
        }
    }
    
    func getImage(id:String) -> ImageCore? {
        let request =  NSFetchRequest<ImageCore>(entityName: "ImageCore")
        request.fetchLimit = 1
        request.predicate = NSPredicate(
            format: "id LIKE %@", id
        )
        do{
            return try container.viewContext.fetch(request).first
        }catch{
            return nil
        }
    }
    
    func saveData(){
        do {
            try container.viewContext.save()
        } catch {
            print("Error while saving on core data:  \(error)")
        }
    }
    
    func saveImage(id: String, data:Data) {
        let image = ImageCore(context: container.viewContext)
        image.id = id
        image.data = data
        saveData()
    }
}
