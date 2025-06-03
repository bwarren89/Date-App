#if canImport(SwiftUI)
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ActivitiesView()
                .tabItem {
                    Image(systemName: "heart.text.square")
                    Text("Activities")
                }
            ItineraryView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Your Date")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Itinerary())
    }
}
#endif
