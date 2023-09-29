import UIKit
import SwiftUI

class FirstViewController: UIViewController {
    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.setTitle("Go to SwiftUI Screen", for: .normal)
        button.addTarget(self, action: #selector(goToSwiftUIScreen), for: .touchUpInside)
        button.backgroundColor = .blue
        view.addSubview(button)
    }
    
    @objc func goToSwiftUIScreen() {
        let buyConsultationViewModel = BuyConsultationViewModel()
        
        let buyConsultationView = BuyConsultationView()
        let hostingController = UIHostingController(rootView: buyConsultationView)
        navigationController?.pushViewController(hostingController, animated: true)
    }


}
