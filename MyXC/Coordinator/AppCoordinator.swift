import Foundation
import UIKit

protocol Coordinator: AnyObject {
    func start()
}

class AppCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = FirstViewController()
        viewController.coordinator = self
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
    
//    func goToNextScreen() {
//        let secondViewController = SecondViewController()
//        secondViewController.coordinator = self
//        window.rootViewController?.present(secondViewController, animated: true, completion: nil)
//    }
}


