//
//  QuoteData.swift
//  Projektwoche1
//
//  Created by Kasi Weichenberger on 17.09.24.
//

import Foundation

struct QuoteData {
    static let initialQuotes: [Quote] = [
        Quote(id: UUID(), text: "Das Einzige, was wir zu fürchten haben, ist die Angst selbst.", author: "Franklin D. Roosevelt", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Der beste Mensch ist derjenige, der anderen am nützlichsten ist.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Die einzige Art zu leben besteht darin, jede Minute als unwiederholbar zu akzeptieren.", author: "Jack Kornfield", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Der Erfolg ist nicht der Schlüssel zum Glück. Glück ist der Schlüssel zum Erfolg.", author: "Albert Schweitzer", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Die Geduld ist Licht.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Lass nicht zu, dass das, was du nicht kannst, das stört, was du tun kannst.", author: "John Wooden", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Wer den Tag mit einem Lächeln beginnt, hat ihn bereits gewonnen.", author: "Cicero", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Gutes Verhalten ist der beste Ausdruck des Glaubens.", author: "Prophet Muhammad", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Die Wahrheit ist Klarheit.", author: "Prophet Muhammad ", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Das Leben ist entweder ein großes Abenteuer oder nichts.", author: "Helen Keller", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Der einzige Weg, großartige Arbeit zu leisten, ist zu lieben, was man tut.", author: "Steve Jobs", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Hoffnung ist nicht die Überzeugung, dass etwas gut ausgeht, sondern die Gewissheit, dass etwas Sinn hat, egal wie es ausgeht.", author: "Vaclav Havel", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Barmherzigkeit wird denen gezeigt, die barmherzig sind. Seid barmherzig zu den Bewohnern der Erde, und derjenige im Himmel wird barmherzig zu euch sein.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Das Streben nach Wissen ist eine Pflicht für jeden, der nach Erleuchtung sucht.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Der beste unter euch ist derjenige, der sich am besten verhält.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Die beste Art, Frieden zu finden, ist, ihn in den Herzen anderer zu säen.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Nichts im Leben ist zu fürchten, es ist nur zu verstehen.", author: "Marie Curie", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Die Zukunft gehört denen, die an die Wahrhaftigkeit ihrer Träume glauben.", author: "Eleanor Roosevelt", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Leben ist das, was passiert, während du beschäftigt bist, andere Pläne zu machen.", author: "John Lennon", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Derjenige, der nicht freundlich ist, wird keine Freundlichkeit erfahren.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "In der Mitte von Schwierigkeiten liegen die Möglichkeiten.", author: "Albert Einstein", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Höflichkeit ist eine universelle Tugend.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Phantasie ist wichtiger als Wissen, denn Wissen ist begrenzt.", author: "Albert Einstein", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Lass die Menschen sehen, dass du freundlich und gerecht bist.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Freiheit bedeutet Verantwortung. Deshalb fürchten sich die meisten Menschen davor.", author: "George Bernard Shaw", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Glück ist, was passiert, wenn Vorbereitung auf Gelegenheit trifft.", author: "Seneca", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Wissen spricht, Weisheit hört zu.", author: "Jimi Hendrix", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Die beste Art, etwas zu bewahren, ist es zu teilen.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Vergebe und sei großzügig, und du wirst Freude finden.", author: "Prophet Muhammad (saw)", category: "Glaube", isFavorite: false),
        Quote(id: UUID(), text: "Glaube an dich selbst und an all das, was du bist.", author: "Christian D. Larson", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Mut ist nicht die Abwesenheit von Angst, sondern die Überwindung von ihr.", author: "Nelson Mandela", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Manchmal ist der größte Akt der Weisheit, sich einfach zurückzulehnen und das Leben geschehen zu lassen.", author: "Unknown", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Der Weg ist das Ziel.", author: "Konfuzius", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Die beste Zeit, einen Baum zu pflanzen, war vor 20 Jahren. Die zweitbeste Zeit ist jetzt.", author: "Chinesisches Sprichwort", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Es ist nicht der Berg, den wir bezwingen, sondern uns selbst.", author: "Sir Edmund Hillary", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Das Leben ist wie eine Kamera. Fokussiere auf das Gute, entwickle aus den Negativen, und wenn es nicht klappt, mach ein neues Bild.", author: "Unbekannt", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Der einzige Fehler ist der, aus dem wir nichts lernen.", author: "Henry Ford", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Es gibt keine Grenzen. Es gibt nur Plateaus und die, die bereit sind, weiterzugehen.", author: "Bruce Lee", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Der einzige Unterschied zwischen einem guten und einem schlechten Tag ist deine Einstellung.", author: "Dennis S. Brown", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Das Leben ist eine Reise, kein Ziel.", author: "Ralph Waldo Emerson", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Die beste Vergeltung ist, anders zu leben als erwartet.", author: "Unbekannt", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Wenn du aufhörst zu träumen, hörst du auf zu leben.", author: "Malcolm Forbes", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Gib jedem Tag die Chance, der beste deines Lebens zu werden.", author: "Mark Twain", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Der einzige Weg, großartige Arbeit zu leisten, ist zu lieben, was du tust.", author: "Steve Jobs", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Was wir heute tun, entscheidet darüber, wie die Welt morgen aussieht.", author: "Unbekannt", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Alles, was du dir vorstellen kannst, ist real.", author: "Pablo Picasso", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Der Erfolg ist die Summe kleiner Bemühungen, die jeden Tag wiederholt werden.", author: "Robert Collier", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Schwierigkeiten sind die besten Lehrmeister.", author: "Unbekannt", category: "Lebensweisheit", isFavorite: false),
        Quote(id: UUID(), text: "Die beste Art, die Zukunft vorherzusagen, ist, sie zu gestalten.", author: "Peter Drucker", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Es ist nie zu spät, das zu werden, was du hättest sein können.", author: "George Eliot", category: "Inspirierend", isFavorite: false),
        Quote(id: UUID(), text: "Jeder Tag ist eine Chance, dein Leben zu verändern.", author: "Unbekannt", category: "Motivierend", isFavorite: false),
        Quote(id: UUID(), text: "Die einzige Grenze, die du hast, ist die, die du dir selbst setzt.", author: "Unbekannt", category: "Motivierend", isFavorite: false)
    ]
}
