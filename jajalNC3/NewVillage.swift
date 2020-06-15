//
//  NewVillage.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class NewVillage: UIViewController {
//    @IBOutlet var square: [UIImageView]!
    @IBOutlet weak var txtBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new-village.png")!)
    }
    
    //rounded button & shadow
    func roundedCorner(){
//        for image in square{
//            image.clipsToBounds = false
//            image.layer.cornerRadius = 20
//            image.layer.shadowColor = UIColor.black.cgColor
//            image.layer.shadowOffset = CGSize(width: 3, height: 3)
//            image.layer.shadowOpacity = 0.5
//        }
        txtBackground.layer.cornerRadius = 10
        txtBackground.layer.borderColor = UIColor.black.cgColor
        txtBackground.layer.borderWidth = 1
    }
}
