//
//  QuoteView.swift
//  Projektwoche1
//
//  Created by Kasi Weichenberger on 17.09.24.
//

import SwiftUI
import SwiftData

struct QuoteView: View {
    @Bindable var quote: Quote
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .frame(maxWidth:500)
                .ignoresSafeArea(.all)

            VStack {
                Spacer(minLength: 20)
                Text("\"\(quote.text)\"")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .lineLimit(nil)
                    .frame(maxWidth: 380)

                Text("- \(quote.author)")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.top, 10)

                Button(action: {
                    toggleFavorite()
                }) {
                    Image(systemName: quote.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(.yellow)
                }
                Spacer(minLength: 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding()
        }
        .transition(.opacity)
        .animation(.easeInOut(duration: 0.5), value: quote.isFavorite)
    }

    private func toggleFavorite() {
        quote.isFavorite.toggle()
        do {
            try modelContext.save()
        } catch {
            print("Fehler beim Speichern des Favoritenstatus: \(error)")
        }
    }
}
