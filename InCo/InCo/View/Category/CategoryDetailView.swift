//
//  CategoryDetailView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct CategoryDetailView: View {
    
    @ObservedRealmObject var category: Category
    @State var selectedExpenditure: Expenditure? = nil
    
    var body: some View {
        VStack {
            Text(category.name)
            List {
                ForEach(category.expenditures) { expenditure in
                    ExpenditureCardView(expenditure: expenditure)
                }
            }
            
        }
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView(category: Category())
    }
}
