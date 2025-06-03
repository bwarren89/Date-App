#if canImport(SwiftUI)
import SwiftUI

struct ActivityDetailView: View {
    let activity: Activity
    @EnvironmentObject var itinerary: Itinerary

    var body: some View {
        VStack(spacing: 20) {
            Text(activity.name)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            Text(activity.description)
                .multilineTextAlignment(.center)
            Text("Location: \(activity.location)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Button(action: {
                withAnimation(.spring()) {
                    itinerary.add(activity)
                }
            }) {
                Label("Add to Itinerary", systemImage: "plus.circle.fill")
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Spacer()
        }
        .padding()
        .navigationTitle(activity.name)
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailView(activity: SampleData.activities.first!)
            .environmentObject(Itinerary())
    }
}
#endif
