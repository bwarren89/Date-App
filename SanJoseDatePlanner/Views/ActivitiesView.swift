#if canImport(SwiftUI)
import SwiftUI

struct ActivitiesView: View {
    var categories: [Category] { Category.allCases }

    var body: some View {
        NavigationView {
            List(categories) { category in
                NavigationLink(destination: ActivityListView(category: category)) {
                    Text(category.rawValue)
                        .font(.headline)
                        .padding()
                }
            }
            .navigationTitle("Plan Your Date")
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
#endif
