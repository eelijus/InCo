//
//  Expenditure.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import Foundation
import RealmSwift

class Expenditure: Object, Identifiable {
//    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted(primaryKey: true) var id: ObjectId

    @Persisted var name: String = ""
    @Persisted var amount: Double = 0
    @Persisted var date: Date = Date()
//    @Persisted var category: LinkingObjects<Category> = LinkingObjects(fromType: Category.self, property: "expenditures")
    
//    convenience init(name: String, amount: Int, date: Date) {
//        self.init()
//        self.name = name
//        self.amount = amount
//        self.date = date
//    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
