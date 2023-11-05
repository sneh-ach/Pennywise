//
//  NSSavePanel+Extension.swift
//  ExpenseTrackerMac
//
//  Created by SnehAch on 11/05/2023.
//  Copyright © 2023 Sneh Acharya. All rights reserved.
//

import Cocoa

extension NSSavePanel {
    
    static func saveCSV(_ data: Data, completion: ((_ result: Result<Bool, Error>) -> ())? = nil) {
        let savePanel = NSSavePanel()
        savePanel.canCreateDirectories = true
        savePanel.showsTagField = false
        let dateText = Utils.dateFormatter.string(for: Date()) ?? ""
        savePanel.nameFieldStringValue = "expenses-\(dateText).csv"
        savePanel.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(.modalPanelWindow)))
        savePanel.begin { (result) in
            guard result == .OK,
                let url = savePanel.url else {
                completion?(.failure(
                    NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to get file location"])
                ))
                return
            }
            
            DispatchQueue.global(qos: .userInitiated).async {
                do {
                    try data.write(to: url)
                } catch {
                    completion?(.failure(error))
                }
            }
        }
    }
}




