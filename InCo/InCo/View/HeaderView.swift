//
//  HeaderView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct HeaderView: View {

    @ObservedResults(Category.self) var categories
    
    var body: some View {
        HStack {
            Text(getTotalBudget())
        }
    }
    
    
    func getTotalBudget() -> String {
        var totalBudget: Double = 0
        
        for i in 0...categories.count - 1 {
            totalBudget += categories[i].budget
        }
        
        return (String(totalBudget))
    }

}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
