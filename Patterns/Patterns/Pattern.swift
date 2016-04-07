//
//  Pattern.swift
//  Patterns
//
//  Created by Gerry Laplante on 4/6/16.
//  Copyright © 2016 Gerry Laplante. All rights reserved.
//

import Foundation
import CoreData


class Pattern: NSManagedObject {

    @NSManaged var name: String?
    @NSManaged var frontImage: NSData?
    @NSManaged var backImage: NSData?

}
