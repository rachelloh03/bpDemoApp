//
//  ContentView.swift
//  BlueprintDemoApp
//
//  Created by Mindy Long on 2/2/21.
//

import SwiftUI
import UIKit

class HomeViewController: UIViewController {
    
    let myLabel = UILabel()
    let myButton = UIButton()
    let myForm = UITextField()
    let myImage = UIImageView()
    
    override func viewDidLoad() {
        
        self.view.addSubview(myForm)
        self.view.addSubview(myLabel)
        self.view.addSubview(myButton)
        self.view.addSubview(myImage)
        
        myForm.backgroundColor = .red
        myForm.borderStyle = .roundedRect
        myForm.placeholder = "Your text here..."
        myForm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myForm.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            myForm.heightAnchor.constraint(equalToConstant: 50),
            myForm.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            myForm.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
        ])
        myForm.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .allEditingEvents)
        
        myLabel.text = "Hello World!"
        myLabel.backgroundColor = .green
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.numberOfLines = 3
        myLabel.textAlignment = .center
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: myForm.bottomAnchor),
            myLabel.heightAnchor.constraint(equalToConstant: 200),
            myLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            myLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
        ])
        
        myButton.setTitle("Press me!", for: .normal)
        myButton.setTitle("Pressed!", for: .highlighted)
        myButton.backgroundColor = .blue
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: myLabel.bottomAnchor),
            myButton.heightAnchor.constraint(equalToConstant: 50),
            myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
        ])
        myButton.addTarget(self, action: #selector(changeText(_:)), for: .allTouchEvents)
        
        myImage.image = UIImage(named: "late_sunset_1")
        myImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: myButton.bottomAnchor, constant: 20),
            myImage.heightAnchor.constraint(equalToConstant: 200),
            myImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25),
            myImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25)
        ])
        
    }
    
    @objc func changeText(_ sender: UIButton!) {
        
        // Part 1
        /* if myLabel.text == "Hello World!" {
            myLabel.text = "Welcome to Blueprint 2021!"
        } else {
            myLabel.text = "Hello World!"
        } */
        
        // Part 2
        myLabel.text = myForm.text
        
    }
    
    // LAST PART for session 1
    @objc func textFieldDidChange(_ sender: UITextField!) {
        myLabel.text = myForm.text
    }
    
}

struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        

            func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
                return UINavigationController(rootViewController: HomeViewController())
            }

            func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {

            }

        }
}
