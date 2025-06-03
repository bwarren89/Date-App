import Foundation
#if canImport(Combine)
import Combine

class Itinerary: ObservableObject {
    @Published var activities: [Activity] = []

    func add(_ activity: Activity) {
        if !activities.contains(activity) {
            activities.append(activity)
        }
    }

    func remove(at offsets: IndexSet) {
        for index in offsets.sorted(by: >) {
            activities.remove(at: index)
        }
    }
}
#else
class Itinerary {
    var activities: [Activity] = []

    func add(_ activity: Activity) {
        if !activities.contains(activity) {
            activities.append(activity)
        }
    }

    func remove(at offsets: IndexSet) {
        for index in offsets.sorted(by: >) {
            activities.remove(at: index)
        }
    }
}
#endif
