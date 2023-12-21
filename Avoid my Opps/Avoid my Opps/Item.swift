//
//  Item.swift
//  Avoid my Opps
//
//  Created by Pranav Addepalli on 12/21/23.
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
