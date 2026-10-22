
import SwiftUI

struct ContentView: View {

    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitsDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                    }
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action : {
                        isShowingSettings = true
                        
                    }) {
                     Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings ) {
                        SettingsView()
                    }
                        
                        
                    
            
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
