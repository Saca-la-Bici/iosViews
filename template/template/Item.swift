//
//  Item.swift
//  template
//
//  Created by Maria Jose Gaytan Gil on 03/09/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
