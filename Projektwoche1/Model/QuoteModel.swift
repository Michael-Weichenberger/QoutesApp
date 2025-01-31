//
//  QuoteModel.swift
//  Projektwoche1
//
//  Created by Kasi Weichenberger on 16.09.24.
//

import Foundation
import SwiftData

@Model
class Quote: Identifiable {
    var id: UUID
    var text: String
    var author: String
    var category: String
    var isFavorite: Bool = false
    
    init(id: UUID, text: String, author: String, category: String, isFavorite: Bool) {
        self.id = id
        self.text = text
        self.author = author
        self.category = category
        self.isFavorite = isFavorite
    }
    
    
}
