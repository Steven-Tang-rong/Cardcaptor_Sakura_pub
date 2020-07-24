//
//  cardImageView.swift
//  Cardcaptor_Sakura
//
//  Created by TANG,QI-RONG on 2020/7/23.
//  Copyright © 2020 Steven. All rights reserved.
//

import UIKit

class cardImageView: UIImageView {

    var cardRank = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        isUserInteractionEnabled = true
        layer.cornerRadius = 20
    }

    var faceUp = false {
        didSet{
            image = UIImage(named: faceUp ? cardRank : "0")
        }
    }
    
}
