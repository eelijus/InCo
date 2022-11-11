//
//  HomeView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct HomeView: View {
    
    @ObservedResults(Category.self) var categories
    
    @State private var showExpenditureAddView = false

    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                ForEach(categories, id: \.id) { category in
                    NavigationLink {
                        CategoryDetailView(category: category)
                    } label: {
                        CategoryCardView(category: category)
                    }
                }
                .onDelete(perform: $categories.remove)
            }
            .navigationBarItems(trailing: NavigationLink(
                destination: CategoryAddView()
            ) {
               Text("💎")
                    .font(.largeTitle)
            })
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
