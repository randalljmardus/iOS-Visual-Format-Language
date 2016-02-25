//
//  ViewController.swift
//  Visual Format Language
//
//  Created by Randall Mardus on 2/25/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = UIColor.redColor()
        view.addSubview(myView)
        
        let views = ["myView" : myView]
        
        let constraint1 = NSLayoutConstraint.constraintsWithVisualFormat("|[myView]|", options: .AlignAllTop, metrics: nil, views: views)
        let constraint2 = NSLayoutConstraint.constraintsWithVisualFormat("V:|[myView]|", options: .AlignAllTop, metrics: nil, views: views)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

