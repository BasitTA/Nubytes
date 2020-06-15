//
//  ChooseOne.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class ChooseOne: UIViewController {
    @IBOutlet var classBtn: [UIButton]!
    @IBOutlet weak var txtBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "in-front-of-classroom.png")!)
        roundedCorner()
    }
    
    func roundedCorner(){
        txtBackground.layer.cornerRadius = 10
        txtBackground.layer.borderColor = UIColor.black.cgColor
        txtBackground.layer.borderWidth = 1
        
        for button in classBtn{
            button.imageView?.layer.cornerRadius = 20
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
    }
}
