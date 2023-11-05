//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by SnehAch on 11/05/2023.
//  Copyright © 2023 Sneh Acharya. All rights reserved.
//

import Foundation

extension Double {
    
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
}
