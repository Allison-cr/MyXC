//import UIKit
//
//class MainViewController: UIViewController {
//    weak var coordinator: MainCoordinator?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "Main Screen"
//        view.backgroundColor = .white
//        
//        let button1 = UIButton(type: .system)
//        button1.setTitle("Screen 1", for: .normal)
//        button1.addTarget(self, action: #selector(goToScreen1), for: .touchUpInside)
//        button1.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(button1)
//        
//        let button2 = UIButton(type: .system)
//        button2.setTitle("Screen 2", for: .normal)
//        button2.addTarget(self, action: #selector(goToScreen2), for: .touchUpInside)
//        button2.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(button2)
//        
//        let button3 = UIButton(type: .system)
//        button3.setTitle("Screen 3", for: .normal)
//        button3.addTarget(self, action: #selector(goToScreen3), for: .touchUpInside)
//        button3.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(button3)
//        
//        NSLayoutConstraint.activate([
//            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//            
//            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20),
//            
//            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 20)
//        ])
//    }
//    
//    @objc func goToScreen1() {
//        coordinator?.start()
//    }
//    
//    @objc func goToScreen2() {
//        coordinator?.goToScreen2()
//    }
//    
//    @objc func goToScreen3() {
//        coordinator?.goToScreen3()
//    }
//}
