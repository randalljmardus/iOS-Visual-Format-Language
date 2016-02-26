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
        
        let views = ["myView" : myView, "super" : view]
        
        let constraints1 = NSLayoutConstraint.constraintsWithVisualFormat("|[myView(super)]", options: .AlignAllTop, metrics: nil, views: views)
        let constraints2 = NSLayoutConstraint.constraintsWithVisualFormat("V:[myView(200)]|", options: .AlignAllTop, metrics: nil, views: views)
        
        NSLayoutConstraint.activateConstraints(constraints1)
        NSLayoutConstraint.activateConstraints(constraints2)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

