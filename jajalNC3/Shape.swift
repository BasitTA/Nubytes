//
//  Shape.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class Shape: UIViewController {
    @IBOutlet weak var square: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "shape-background.png")!)
        roundedCorner()
    }
    
    func roundedCorner(){
        square.clipsToBounds = false
        square.layer.cornerRadius = 10
        square.layer.shadowColor = UIColor.black.cgColor
        square.layer.shadowOffset = CGSize(width: 3, height: 3)
        square.layer.shadowOpacity = 0.5
    }
}
