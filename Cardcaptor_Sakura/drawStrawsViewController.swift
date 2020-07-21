//
//  drawStrawsViewController.swift
//  Cardcaptor_Sakura
//
//  Created by TANG,QI-RONG on 2020/7/20.
//  Copyright © 2020 Steven. All rights reserved.
//

import UIKit


class drawStrawsViewController: UIViewController {

    let cardsSet = [Int](1...52)
    var clowCards: [Int]!
    var item: Int! = 0
    
    
    @IBOutlet weak var clowCard: UIImageView!
    
    @IBOutlet weak var cardBack: UIButton!
    
    
    @IBAction func cardChange(_ sender: Any) {
        updateCards()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clowCards = cardsSet.shuffled()
        clowCard.image = UIImage(named: "0")
    }
    
    func updateCards() {
        item = item + 1
        
        if item == 1 {
            item = 1
            clowCard.image = UIImage(named: "\(clowCards[item])")
            print("success 1")
        }else {
            item = 0
            clowCard.image = UIImage(named: "0")
            print("success 0")
        }
    }

}
