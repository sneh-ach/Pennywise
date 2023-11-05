//
//  HostingController.swift
//  ExpenseTrackerWatchOS WatchKit Extension
//
//  Created by SnehAch on 11/05/2023.
//  Copyright © 2023 Sneh Acharya. All rights reserved.
//

import WatchKit
import SwiftUI

class DashboardController: WKHostingController<DashboardView> {
    
    override var body: DashboardView {
        return DashboardView(context: CoreDataStack.shared.viewContext)
    }
}
