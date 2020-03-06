//
//  ViewController.swift
//  layoutCode
//
//  Created by Ngoduc on 3/4/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let childView = UIView()
    let bottomeView = UIView()
    let chulView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childView.backgroundColor = UIColor.red
        view.addSubview(childView)
        //cach 1: NSLayoutContraint
        setuplayout1()
//        setUp3()
       setUpLayout2()
    }
    func setUp3(){
        let topContrant = NSLayoutConstraint(item: chulView,
                                             attribute: NSLayoutConstraint.Attribute.top,
                                             relatedBy: .equal,
                                             toItem: self.view,
                                             attribute: .top,
                                             multiplier: 1,
                                             constant: 44)
        let leftContrant = NSLayoutConstraint(item: chulView,
                                              attribute: .left,
                                                    relatedBy: .equal,
                                                    toItem: self.view,
                                                    attribute: .left,
                                                    multiplier: 1,
                                                    constant: 20)
        let rightConstrant = NSLayoutConstraint(item: chulView,
                                                attribute: .right, relatedBy:.equal,
                                                toItem: self.view,
                                                attribute: .right,
                                                multiplier: 1,
                                                constant: -20)
        
               let heightConstrant = NSLayoutConstraint(item: chulView,
               attribute: .height, relatedBy:.equal,
               toItem: self.view,
               attribute: .height,
               multiplier: 1/2,
               constant: 20)
        chulView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topContrant,rightConstrant,leftContrant,heightConstrant])
    }
    func setuplayout1(){
        
        let topContrain = NSLayoutConstraint(item: childView,
                                             attribute: NSLayoutConstraint.Attribute.top,
                                                    relatedBy: .equal,
                                                    toItem: self.view,
                                                    attribute: .top,
                                                    multiplier: 1, constant: 44)
               let leftContrain = NSLayoutConstraint(item: childView,
                                                     attribute: .left,
                                                     relatedBy: .equal,
                                                     toItem: self.view,
                                                     attribute: .left,
                                                     multiplier: 1,
                                                     constant: 20)
               let rightContrain = NSLayoutConstraint(item: childView,
                                                      attribute: .right,
                                                      relatedBy: .equal,
                                                      toItem: self.view,
                                                      attribute: .right,
                                                      multiplier: 1,
                                                      constant: -20)
               let heightContrain = NSLayoutConstraint(item: childView,
                                                       attribute: .height,
                                                       relatedBy: .equal,
                                                       toItem: self.view,
                                                       attribute: .height,
                                                       multiplier: 1/2,
                                                       constant: 20)
               // vo hieu hoa frame
               childView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topContrain,leftContrain,rightContrain,heightContrain])
    }
    func setUpLayout2(){
        bottomeView.backgroundColor = UIColor.green
        view.addSubview(bottomeView)
        bottomeView.translatesAutoresizingMaskIntoConstraints = false
        bottomeView.topAnchor.constraint(equalTo: self.childView.bottomAnchor, constant: 20).isActive = true
        bottomeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        bottomeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        bottomeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -34).isActive = true
    }
    
}

