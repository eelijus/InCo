//
//  ExpenditureAddView.swift
//  InCo
//
//  Created by Suji Lee on 2022/11/09.
//

import SwiftUI
import RealmSwift

struct ExpenditureAddView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedRealmObject var category: Category    
    
    @State var name: String = ""
    @State var date: Date = Date()
    @State var amount: String = ""
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text(category.name)
                        .font(.largeTitle)
                } header: {
                    Text(category.icon)
                }
                Section {
                    TextField("name", text: $name)
                    TextField("amount", text: $amount)
                    DatePicker("date", selection: $date)
                        .datePickerStyle(.compact)
                        .labelsHidden()
                } header: {
                    Text("💸")
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
                        attachExpenditure()
                        dismiss()
                    }
                    .disabled(amount == "")
                }
            }
        }
    }
    
    private func attachExpenditure() {
        let newExpenditure = Expenditure()
        newExpenditure.name = name
        newExpenditure.amount = Double(amount)!
        newExpenditure.date = date
        $category.expenditures.append(newExpenditure)
    }
}

struct ExpenditureAddView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenditureAddView(category: Category())
    }
}
