

import Foundation



struct Country {
     let name = [
        "Russia",
        "Turkey",
        "Portugalya",
        "Italya",
        "Ispania",
        "Gruzia",
        "Tailand",
        "Sweden",
        "Germany"
    ]
}

struct KindTour {
    static let kindTout = [
        "Segway tour",
        "Enjoy shopping day",
        "Walking tour in city center",
        "City panorama trip",
        "Private sunset tour",
        "Traditional dinner and dance show",
        "Full day private Tour",
        "Self Guided City Tour",
        "Wine tour with lunch",
    ]
    
    static let tourPrices = ["125$", "459$", "120$", "145$", "586$", "100$", "345$", "190$", "500$"]
    
    enum CountryType: CaseIterable {
        case Russia
        case Turkey
        case Germany
        case Austria
        case Thailand
        case Georgia
        case Spain
        case Italy
        case Portugal
        
        
        
        var city: [String] {
            switch self {
            case .Russia:
                return ["Moscow Tour","Saint-Petersburg Tour", "Sochi Tour", "Irkutsk Tour"]
                
            case .Turkey:
                return ["Istanbul Tour", "Antalya Tour", "Izmir Tour", "Cappadocia Tour"]
                
            case .Germany:
                return ["Frankfurt Tour", "Berlin Tour", "Munich Tour", "Hamburg Tour"]
                
            case .Austria:
                return ["Vienna Tour", "Salzburg Tour", "Hallstatt Tour", "Baden Tour"]
                
            case .Thailand:
                return ["Phuket Tour", "Pattaya Tour", "Koh Samui Tour", "Bangkok Tour"]
                
            case .Georgia:
                return ["Tbilisi Tour", "Bakuriani Tour", "Gudauri Tour", "Batumi Tour"]
                
            case .Spain:
                return ["Barcelona Tour", "Madrid Tour", "Mallorca Tour", "Marbella Tour"]
                
            case .Italy:
                return ["Rome Tour", "Venice Tour", "Florence Tour", "Sicily Tour"]
                
            case .Portugal:
                return ["Lisbon Tour", "Porto Tour", "Madeira Tour", "Faro Tour"]
                
            }
        }
    }
}


