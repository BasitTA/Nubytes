//
//  ViewController.swift
//  jajalNC3
//
//  Created by Basit Tri Anggoro on 11/06/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var square: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var rectangle: UIButton!
    @IBOutlet weak var triangle: UIButton!
    @IBOutlet var icons: [UIButton]!
    
    var buttonHighlighted:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hero-selection.png")!)
       roundedCorner()
}
    
    //rounded button & shadow
    func roundedCorner(){
        for button in icons{
            button.imageView?.layer.cornerRadius = 5
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
        
        nextButton.layer.cornerRadius = 5
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        nextButton.layer.shadowOpacity = 0.3
    }
    
    @IBAction func selectSquare(_ sender: UIButton) {
        DispatchQueue.main.async {
           if self.buttonHighlighted == false{
               sender.isHighlighted = true
               self.circle.isHighlighted = false
               self.rectangle.isHighlighted = false
                self.triangle.isHighlighted = false
           }else{
               sender.isHighlighted = false
               self.buttonHighlighted = false
           }
        }
    }
    
    @IBAction func selectCircle(_ sender: UIButton) {DispatchQueue.main.async {
           if self.buttonHighlighted == false{
               sender.isHighlighted = true
               self.square.isHighlighted = false
               self.rectangle.isHighlighted = false
                self.triangle.isHighlighted = false
           }else{
               sender.isHighlighted = false
               self.buttonHighlighted = false
           }
        }
    }
    
    @IBAction func selectRectangle(_ sender: UIButton) {
        DispatchQueue.main.async {
           if self.buttonHighlighted == false{
               sender.isHighlighted = true
               self.circle.isHighlighted = false
               self.square.isHighlighted = false
                self.triangle.isHighlighted = false
           }else{
               sender.isHighlighted = false
               self.buttonHighlighted = false
           }
        }
    }
    
    @IBAction func selectTriangle(_ sender: UIButton) {
        DispatchQueue.main.async {
           if self.buttonHighlighted == false{
               sender.isHighlighted = true
               self.circle.isHighlighted = false
               self.rectangle.isHighlighted = false
                self.square.isHighlighted = false
           }else{
               sender.isHighlighted = false
               self.buttonHighlighted = false
           }
        }
    }
}

