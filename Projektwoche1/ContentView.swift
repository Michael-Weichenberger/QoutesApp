import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var quotes: [Quote]
    @State private var currentQuote: Quote?
    @State private var currentImage: String = "Bild1"
    @State private var showFavoritesSheet = false
    @State private var selectedCategory: String? = nil
    @State private var previousQuote: Quote?
    @Environment(\.modelContext) private var modelContext
    
    private let categories = ["Inspirierend", "Motivierend", "Lebensweisheit", "Glaube"]
    private let images = ["Bild1", "Bild2", "Bild3", "Bild4","Bild5","Bild6","Bild7","Bild8","Bild9","Bild10","Bild11","Bild12","Bild13","Bild14","Bild15"]
    
    var body: some View {
        ZStack {
            Image(currentImage)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Picker("Kategorien", selection: $selectedCategory) {
                    Text("Alle").tag(String?.none)
                        .foregroundColor(.yellow)
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category as String?)
                        
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .onChange(of: selectedCategory) {
                    loadRandomQuoteAndImage()
                }
                
                Spacer()
                
                VStack {
                    if let currentQuote = currentQuote {
                        QuoteView(quote: currentQuote)
                    } else {
                        Text("Kein Zitat verfügbar")
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                Spacer()
                
                HStack(spacing: 15) {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            loadRandomQuoteAndImage()
                        }
                    }) {
                        Label("Neues Zitat", systemImage: "arrow.clockwise")
                            .padding()
                            .background(Color.yellow.opacity(0.8))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    
                    Button(action: {
                        showFavoritesSheet = true
                    }) {
                        Label("Favoriten", systemImage: "heart.fill")
                            .padding()
                            .background(Color.yellow.opacity(0.8))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .sheet(isPresented: $showFavoritesSheet) {
                        FavoritesView()
                    }
                }
            }
            .padding()
        }
        .onAppear {
            if quotes.isEmpty {
                addInitialQuotes()
            }
            loadRandomQuoteAndImage()
        }
    }
    
    var filteredQuotes: [Quote] {
        quotes.filter { quote in
            (selectedCategory == nil || quote.category == selectedCategory) && !quote.isFavorite
        }
    }
    
    func loadRandomQuoteAndImage() {
        guard !filteredQuotes.isEmpty else {
            currentQuote = nil
            return
        }
        let newQuote = filteredQuotes.randomElement()
        if currentQuote != newQuote {
            previousQuote = currentQuote
            currentQuote = newQuote
        }
        currentImage = images.randomElement() ?? "Bild1"
    }
    
    
    func addInitialQuotes() {
        for quote in QuoteData.initialQuotes {
            if !quotes.contains(where: { $0.text == quote.text && $0.author == quote.author }) {
                modelContext.insert(quote)
            }
        }
        do {
            try modelContext.save()
        } catch {
            print("Fehler beim Speichern der Initial-Zitate: \(error)")
        }
    }
}
    #Preview {
        ContentView()
            .modelContainer(for: [Quote.self])
    }

