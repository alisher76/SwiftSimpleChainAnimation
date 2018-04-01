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
    var isShowing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLabels()
        setUpStackView()
        
        // Animate
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc func handleTap() {
        
        animateView(uiview: titleLabel, delay: 0)
        
        // BodyLabel
        
        animateView(uiview: bodyLabel, delay: 0.5)
        
    }

    fileprivate func setUpStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel,bodyLabel])
        stackView.axis = .vertical
        stackView.spacing = 10
        view.addSubview(stackView)
        
        // Enabling AutoLayout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    fileprivate func setUpLabels() {
        titleLabel.text = "LearnToAnimate"
        titleLabel.font = UIFont(name: "Futura", size: 32)
        titleLabel.numberOfLines = 0
        
        bodyLabel.text = "Animations are clipped to the duration of the animation group. For example, a 10 second animation grouped within an animation group with a duration of 5 seconds will only display the first 5 seconds of the animation"
        bodyLabel.numberOfLines = 0
    }
    
    
    fileprivate func animateView(uiview: UIView, delay: Double) {
        
        UIView.animate(withDuration: 0.5, delay: TimeInterval(delay), usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            
            uiview.transform = CGAffineTransform(translationX: -30, y: 0)
            
        }) {  (_) in
            UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                uiview.alpha = 0
                uiview.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
                
            }, completion: nil)
        }
    }
}

