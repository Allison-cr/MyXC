import UIKit
import SwiftUI

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
}
class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func start() {
        let screen1View = Screen1SwiftUIView(coordinator: self)
        let mainVC = UIHostingController(rootView: screen1View)
        navigationController?.pushViewController(mainVC, animated: true)
    }
    
    func goToScreen1() {
        let screen1View = Screen1SwiftUIView(coordinator: self)
        let screen1VC = UIHostingController(rootView: screen1View)
        navigationController?.pushViewController(screen1VC, animated: true)
    }
    
    func goToScreen2() {
        let screen2View = Screen2SwiftUIView(coordinator: self)
        let screen2VC = UIHostingController(rootView: screen2View)
        navigationController?.pushViewController(screen2VC, animated: true)
    }
    
    func goToScreen3() {
        let screen3View = Screen3SwiftUIView(coordinator: self)
        let screen3VC = UIHostingController(rootView: screen3View)
        navigationController?.pushViewController(screen3VC, animated: true)
    }
    func goToScreen4() {
        let screen4View = Screen4SwiftUIView(coordinator: self)
        let screen4VC = UIHostingController(rootView: screen4View)
        navigationController?.pushViewController(screen4VC, animated: true)
    }
    
    func goToScreen5() {
        let screen5View = Screen5SwiftUIView(coordinator: self)
        let screen5VC = UIHostingController(rootView: screen5View)
        navigationController?.pushViewController(screen5VC, animated: true)
    }
}
