//
//  ViewController.swift
//  SoundApp
//
//  Created by F1xTeoNtTsS on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSoundButton()
    }
    
    
    func setupSoundButton(){
        let color: [UIColor] = [.systemRed,.systemOrange,.systemYellow,.systemGreen,.systemIndigo,.systemBlue,.systemPurple]
        let letters = ["C","D","E","F","G","A","B"]
        let stackView = UIStackView()
        var topHeigh:CGFloat = 0
        
        self.view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 5
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        
        let viewHeight = (view.safeAreaLayoutGuide.layoutFrame.size.height * 0.9) / 7
        let viewWidth = view.safeAreaLayoutGuide.layoutFrame.size.width - 20
        print(viewHeight)
        for i in 0...letters.count-1 {
            let button = UIButton()
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = color[i]
            button.setTitle(letters[i], for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.tag = i+1
            stackView.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.topAnchor.constraint(equalTo: stackView.topAnchor, constant: topHeigh).isActive = true
            button.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
            button.widthAnchor.constraint(equalToConstant: CGFloat(viewWidth - CGFloat(i * 10))).isActive = true
            button.heightAnchor.constraint(equalToConstant: viewHeight * 0.95).isActive = true
            print(viewHeight - 10)
            
            topHeigh += viewHeight
            
            button.addTarget(self, action: #selector(numberPressed), for: .touchUpInside)
    }

    }
   
        
    @objc func numberPressed(_ sender: UIButton){
        
    }

}

