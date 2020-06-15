//
//  AskHisName.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class AskHisName: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var square: UIImageView!
    @IBOutlet weak var txtBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "with-friend.png")!)
    }
    
    func roundedCorner(){
        txtBackground.layer.cornerRadius = 10
        txtBackground.layer.borderColor = UIColor.black.cgColor
        txtBackground.layer.borderWidth = 1
        
        square.clipsToBounds = false
        square.layer.cornerRadius = 20
        square.layer.shadowColor = UIColor.black.cgColor
        square.layer.shadowOffset = CGSize(width: 3, height: 3)
        square.layer.shadowOpacity = 0.5
        
        nextButton.layer.cornerRadius = 5
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        nextButton.layer.shadowOpacity = 0.4
    }
}
