//
//  SettingsItemStore.swift
//  SearchExample
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/17.
//

import Foundation

class SettingsItemStore {
    static let shared = SettingsItemStore()

    var items: [SettingsItem] = [
        SettingsItem(name: "obscuresBackgroundDuringPresentation"),
        SettingsItem(name: "dimsBackgroundDuringPresentation"),
    ]
    
    func valueOf(_ name: String) -> Bool? {
        guard let item = items.filter({ $0.name == name }).first, item.state != .undefine else {
            return nil
        }

        return item.state == .true
    }
}
