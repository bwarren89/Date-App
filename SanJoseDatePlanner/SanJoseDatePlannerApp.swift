#if canImport(SwiftUI)
import SwiftUI

@main
struct SanJoseDatePlannerApp: App {
    @StateObject private var itinerary = Itinerary()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itinerary)
        }
    }
}
#endif
