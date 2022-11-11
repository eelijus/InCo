//
//  Category.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import Foundation
import RealmSwift

class Category: Object, Identifiable {
//    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted(primaryKey: true) var id: ObjectId

    @Persisted var name: String = ""
    @Persisted var icon: String = ""
    @Persisted var budget: Double = 10000
    @Persisted var totalOutlay: Double = 7000
    @Persisted var expenditures = List<Expenditure>()
    
//    convenience init(name: String, icon: String, budget: Int) {
//        self.init()
//        self.name = name
//        self.icon = icon
//        self.budget = budget
//    }
  
    override class func primaryKey() -> String? {
        "id"
    }
}
