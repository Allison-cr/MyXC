import SwiftUI

struct Screen4SwiftUIView: View {
    var coordinator: MainCoordinator
    
    var body: some View {
        VStack {
            Text("Screen 4")
                .font(.largeTitle)
                .foregroundColor(.red)
            Button(action: {
                coordinator.goToScreen1()
            }) {
                Text("Go to Screen 1")
            }
            Button(action: {
                coordinator.goToScreen2()
            }) {
                Text("Go to Screen 2")
            }
            Button(action: {
                coordinator.goToScreen3()
            }) {
                Text("Go to Screen 3")
            }
            Button(action: {
                coordinator.goToScreen4()
            }) {
                Text("Go to Screen 4")
            }
            Button(action: {
                coordinator.goToScreen5()
            }) {
                Text("Go to Screen 5")
            }
        }
    }
}
