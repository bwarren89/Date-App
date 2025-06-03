import Foundation

struct Activity: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let category: Category
    let description: String
    let location: String
}

enum Category: String, CaseIterable, Identifiable {
    case dining = "Dining"
    case outdoors = "Outdoors"
    case entertainment = "Entertainment"
    case culture = "Culture"
    case relaxation = "Relaxation"
    
    var id: String { rawValue }
}
