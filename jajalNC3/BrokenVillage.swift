//
//  BrokenVillage.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class BrokenVillage: UIViewController{
    @IBOutlet weak var square: UIImageView!
    @IBOutlet weak var txtBackground: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "broken-village.png")!)
        roundedCorner()
    }
    func roundedCorner(){
        txtBackground.layer.cornerRadius = 10
        txtBackground.layer.borderColor = UIColor.black.cgColor
        txtBackground.layer.borderWidth = 2
        
        square.clipsToBounds = false
        square.layer.cornerRadius = 10
        square.layer.shadowColor = UIColor.black.cgColor
        square.layer.shadowOffset = CGSize(width: 3, height: 3)
        square.layer.shadowOpacity = 0.5
    }
}
