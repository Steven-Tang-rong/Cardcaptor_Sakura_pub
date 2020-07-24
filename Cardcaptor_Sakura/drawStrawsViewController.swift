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

    
    @IBOutlet weak var clowCard: cardImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // clowCards = cardsSet.shuffled()
       // clowCard.image = UIImage(named: "0")
   
    }
    
    
    @IBAction func tap(_ sender: Any) {
        UIView.transition(with: clowCard, duration: 1, options: [.transitionFlipFromLeft], animations: {
            
            self.clowCard.cardRank = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53" ].randomElement()!
            self.clowCard.faceUp.toggle()
            
        }, completion: nil)
        
    }
    
    
    /*func updateCards() {
        item = item + 1
        
        if item == 1 {
            item = 1
            
            clowCard.image = UIImage(named: "\(clowCards[item])")
            
            cardBack.setImage(clowCard.image, for: .normal)
            UIView.transition(with: cardBack, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            clowCard.isHidden = true
            

            print("success 1")
        }else {
            item = 0
            
            clowCard.clipsToBounds = true
            clowCard.image = UIImage(named: "0")
            cardBack.setImage(clowCard.image, for: .normal)
            UIView.transition(with: cardBack, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)

            print("success 0")
        }
    }*/

}
