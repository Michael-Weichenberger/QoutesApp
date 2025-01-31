//
//  Category.swift
//  Projektwoche1
//
//  Created by Kasi Weichenberger on 17.09.24.
//

import Foundation
import SwiftData

@Model
class Category: Identifiable {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
