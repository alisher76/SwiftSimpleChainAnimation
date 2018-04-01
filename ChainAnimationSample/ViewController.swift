//
//  ViewController.swift
//  ChainAnimationSample
//
//  Created by Alisher Abdukarimov on 3/31/18.
//  Copyright © 2018 Alisher Abdukarimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Set up UI
    let titleLabel = UILabel()
    let bodyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "LearnToAnimate"
        titleLabel.font = UIFont(name: "Futura", size: 32)
        titleLabel.numberOfLines = 0
        
        bodyLabel.text = "Animations are clipped to the duration of the animation group. For example, a 10 second animation grouped within an animation group with a duration of 5 seconds will only display the first 5 seconds of the animation"
        bodyLabel.numberOfLines = 0
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel,bodyLabel])
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        // Enabling AutoLayout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
        
    }

}

