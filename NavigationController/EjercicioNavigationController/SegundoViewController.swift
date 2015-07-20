//
//  SegundoViewController.swift
//  EjercicioNavigationController
//
//  Created by Raul Ernesto Escobedo Herrera on 6/24/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {
    
    @IBOutlet weak var switchState: UILabel!
    
    var data:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let label = data{
            switchState.text = data
         }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}