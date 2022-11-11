//
//  CategoryAddView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct CategoryAddView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedResults(Category.self) var categories
    
    @State var name: String = ""
    @State var icon: String = ""
    @State var budget: String = ""
    
    var body: some View {
        NavigationView {
                List {
                    Section {
                        TextField("Category name", text: $name)
                        TextField("Category icon", text: $icon)
                    } header: {
                        Text("😎")
                    }
                    Section {
                        TextField("Category budget", text: $budget)
                    } header: {
                        Text("💵")
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Save") {
                            createCategory()
                            dismiss()
                        }
                        .disabled(name == "")
                    }
                }
        }
    }
    
    private func createCategory() {
        //인스턴스 생성
        let category = Category()
        //사용자가 입력한 값 할당
        category.name = name
        category.icon = icon
        category.budget = Double(budget)!
        $categories.append(category)
    }
}

struct CategoryAddView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryAddView()
    }
}
