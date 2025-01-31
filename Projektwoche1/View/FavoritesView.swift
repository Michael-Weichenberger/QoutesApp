//
//  FavoritesView.swift
//  Projektwoche1
//
//  Created by Kasi Weichenberger on 17.09.24.
//

import SwiftUI
import SwiftData

struct FavoritesView: View {
    @Query private var allQuotes: [Quote]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allQuotes.filter { $0.isFavorite }) { quote in
                    VStack(alignment: .leading) {
                        Text("\"\(quote.text)\"")
                            .font(.headline)
                        Text("- \(quote.author)")
                            .font(.subheadline)
                    }
                }
                .onDelete(perform: deleteQuote)
            }
            .navigationTitle("Favoriten")
            .toolbar {
            }
        }
    }
    
    func deleteQuote(at offsets: IndexSet) {
        let favoriteQuotes = allQuotes.filter { $0.isFavorite }
        
        for index in offsets {
            let quote = favoriteQuotes[index]
            quote.isFavorite = false
            do {
                try modelContext.save()
            } catch {
                print("Fehler beim Entfernen des Favoriten: \(error)")
            }
        }
    }
}

#Preview {
    FavoritesView()
        .modelContainer(for: [Quote.self, Category.self])
}
