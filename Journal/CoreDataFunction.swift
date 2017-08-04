//
//  CoreDataFunction.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.

import CoreData



func load(nsObjectArray: [Journal] , nsObjectContext: NSManagedObjectContext ) -> [Journal] {
    
    var journals = nsObjectArray
    
    let request: NSFetchRequest<Journal> = Journal.fetchRequest()
    do {
        journals = try nsObjectContext.fetch(request)
    } catch {
        print("Could not load data from database \(error.localizedDescription)")
    }
    return journals
    
}




