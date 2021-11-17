//
//  SettingsItem.swift
//  SearchExample
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/17.
//

import Foundation

enum SettingsItemState {
    case undefine
    case `false`
    case `true`
}

extension SettingsItemState: CustomStringConvertible {
    var description: String {
        switch self {
        case .undefine:
            return "undefine"
        case .false:
            return "false"
        case .true:
            return "true"
        }
    }
}

struct SettingsItem {
    typealias State = SettingsItemState

    let name: String
    var state: State
    
    init(name: String) {
        self.name = name
        self.state = .undefine
    }
    
    mutating func nextState() {
        switch state {
        case .undefine:
            self.state = .false
        case .false:
            self.state = .true
        case .true:
            self.state = .undefine
        }
    }
}
