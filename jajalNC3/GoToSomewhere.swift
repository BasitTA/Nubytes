//
//  GoToSomewhere.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 13/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class GoToSomewhere: UIViewController {
    @IBOutlet weak var squareBtn: UIButton!
    @IBOutlet weak var txtBackground: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "go-to-school.png")!)
        roundedCorner()
    }
    
    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
      // 1
      let translation = gesture.translation(in: view)

      // 2
        guard let gestureView = gesture.view else {
        return
      }

      gestureView.center = CGPoint(
        x: gestureView.center.x + translation.x,
        y: gestureView.center.y + translation.y
      )

      // 3
      gesture.setTranslation(.zero, in: view)
    }
    
    func roundedCorner(){
        txtBackground.layer.cornerRadius = 10
        txtBackground.layer.borderColor = UIColor.black.cgColor
        txtBackground.layer.borderWidth = 1
        
        squareBtn.imageView?.layer.cornerRadius = 20
        squareBtn.layer.shadowColor = UIColor.black.cgColor
        squareBtn.layer.shadowOffset = CGSize(width: 3, height: 3)
        squareBtn.layer.shadowOpacity = 0.5
    }

}
