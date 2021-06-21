//
//  ViewController.swift
//  YpJankenApp
//
//  Created by 山岸善将 on 2021/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var jankenImage: UIImageView!
    
    @IBOutlet weak var jankenLabel: UILabel!
    
    var jankenNumber = 0
    
    @IBAction func jankenButton(_ sender: Any) {
        
        var newJankenNumber = 0
        
        repeat {
            newJankenNumber = Int.random(in: 0..<3)
        }while jankenNumber == newJankenNumber
        
        jankenNumber = newJankenNumber
        
        if jankenNumber == 0 {
            jankenImage.image = UIImage(named: "gu")
            jankenLabel.text = "ぐー"
        }else if jankenNumber == 1 {
            jankenImage.image = UIImage(named: "pa")
            jankenLabel.text = "ぱー"
        }else if jankenNumber == 2 {
            jankenImage.image = UIImage(named: "choki")
            jankenLabel.text = "ちょき"
        }
        
    }
    
}

