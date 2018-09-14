// Created on: September 14
// Created by: Nick Pasco-Arnone
// Created for: ICS3U
// This program does basic math, using UIKit
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let areabutton = UIButton()
    let perimeterbutton = UIButton()
    let questionLable = UILabel()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        areabutton.setTitle("area", for: .normal)
        areabutton.titleLabel?.textAlignment = .center
        areabutton.setTitleColor(.blue, for: .normal)
        areabutton.addTarget(self, action: #selector(areatext), for: .touchUpInside)
        view.addSubview(areabutton)
        areabutton.translatesAutoresizingMaskIntoConstraints = false
        areabutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        areabutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        perimeterbutton.setTitle("perimeter", for: .normal)
        perimeterbutton.setTitleColor(.blue, for: .normal)
        perimeterbutton.addTarget(self, action: #selector(perimetertext), for: .touchUpInside)
        view.addSubview(perimeterbutton)
        perimeterbutton.translatesAutoresizingMaskIntoConstraints = false
        perimeterbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        perimeterbutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        questionLable.textAlignment = .center
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: perimeterbutton.bottomAnchor, constant: 20).isActive = true
        questionLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    @objc func areatext() {
        questionLable.text = "area = \(5 * 3)"
    }
    @objc func perimetertext() {
        questionLable.text = "perimeter = \(5 + 5 + 3)"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
