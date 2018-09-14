

// Created on: September-13-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for basic math
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let equation1Label = UILabel()
    let equation2Label = UILabel()
    let answerButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "What is the area and perimeter of a rectangle with length  5 cm and width 3 cm?"
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //equation1Label.text = "Area = \(3 * 5) cm^2"
        view.addSubview(equation1Label)
        equation1Label.translatesAutoresizingMaskIntoConstraints = false
        equation1Label.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 20).isActive = true
        equation1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //equation2Label.text = "Perimeter = \( 3 * 2 + 5 * 2) cm"
        view.addSubview(equation2Label)
        equation2Label.translatesAutoresizingMaskIntoConstraints = false
        equation2Label.topAnchor.constraint(equalTo: equation1Label.bottomAnchor, constant: 20).isActive = true
        equation2Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(showAnswerText), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 20).isActive = true
        answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -20).isActive = true
        
    }
    
    @objc func showAnswerText() {
        // show answers 
        equation1Label.text = "Area = \(3 * 5) cm^2"
        equation2Label.text = "Perimeter = \( 3 * 2 + 5 * 2) cm"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
