#if canImport(SwiftUI)
import SwiftUI

struct ActivityListView: View {
    var category: Category
    var activities: [Activity] {
        SampleData.activities.filter { $0.category == category }
    }

    var body: some View {
        List(activities) { activity in
            NavigationLink(destination: ActivityDetailView(activity: activity)) {
                Text(activity.name)
                    .padding()
            }
        }
        .navigationTitle(category.rawValue)
    }
}
#endif
