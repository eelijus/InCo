//
//  CategoryCardView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct CategoryCardView: View {
    
    @State private var isPresented: Bool = false
    @ObservedRealmObject var category: Category
    
    var body: some View {
        HStack {
            CategoryStatusView(category: category)
            VStack {
                CategoryGageView()
                HStack {
                    Text(String(category.totalOutlay))
                    Text(String(category.budget))
                }
                Button {
                    isPresented = true
                } label: {
                    Text(category.icon)
                }
                .sheet(isPresented: $isPresented) {
                    ExpenditureAddView(category: category)
                }
            }
        }
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: Category())
    }
}
