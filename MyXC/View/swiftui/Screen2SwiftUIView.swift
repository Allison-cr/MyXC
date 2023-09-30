import SwiftUI

struct Screen2SwiftUIView: View {
    var coordinator: MainCoordinator
    
    var body: some View {
        VStack {
            Text("Screen 2")
                .font(.largeTitle)
                .foregroundColor(.green)
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
