#if canImport(SwiftUI)
import SwiftUI

struct ItineraryView: View {
    @EnvironmentObject var itinerary: Itinerary

    var body: some View {
        NavigationView {
            VStack {
                if itinerary.activities.isEmpty {
                    Text("No activities added yet.")
                        .foregroundColor(.secondary)
                        .padding()
                } else {
                    List {
                        ForEach(itinerary.activities) { activity in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(activity.name)
                                    .font(.headline)
                                Text(activity.location)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .onDelete(perform: itinerary.remove)
                    }
                }
            }
            .navigationTitle("Your Itinerary")
        }
    }
}

struct ItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        ItineraryView()
            .environmentObject(Itinerary())
    }
}
#endif
