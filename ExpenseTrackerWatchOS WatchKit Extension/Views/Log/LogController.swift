//
//  LogController.swift
//  ExpenseTrackerWatchOS WatchKit Extension
//
//  Created by SnehAch on 11/05/2023.
//  Copyright © 2023 Sneh Acharya. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI
import CoreData

class LogController: WKHostingController<LogView> {
    
    override var body: LogView {
        return LogView(context: CoreDataStack.shared.viewContext)
    }
}

struct LogView: View {
    
    var context: NSManagedObjectContext
    
    var body: some View {
        LogListView()
            .environment(\.managedObjectContext, context)
    }
}



