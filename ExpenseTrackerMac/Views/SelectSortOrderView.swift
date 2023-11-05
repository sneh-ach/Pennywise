//
//  SelectSortOrderView.swift
//  ExpenseTracker
//
//  Created by SnehAch on 11/05/2023.
//  Copyright © 2023 Sneh Acharya. All rights reserved.
//

import SwiftUI

struct SelectSortOrderView: View {
    
    @Binding var sortType: SortType
    @Binding var sortOrder: SortOrder
    
    private let sortTypes =  SortType.allCases
    private let sortOrders = SortOrder.allCases
    
    var body: some View {
        HStack {
            Picker(selection: $sortType, label: Text("Sort by").font(.system(size: 12, weight: .bold))) {
                ForEach(SortType.allCases) { type in
                    Text(type.rawValue.capitalized)
                        .tag(type)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Picker(selection: $sortOrder, label: Text("Order by").font(.system(size: 12, weight: .bold))) {
                ForEach(sortOrders) { order in
                    Text(order.rawValue.capitalized)
                        .tag(order)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
        .padding(.horizontal)
        
    }
}

struct SelectSortOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSortOrderView(sortType: .constant(.amount), sortOrder: .constant(.descending))
    }
}

