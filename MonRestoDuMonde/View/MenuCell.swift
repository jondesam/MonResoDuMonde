//
//  MenuCell.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-26.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var imageDuMenu: UIImageView!
    @IBOutlet weak var vue: UIView!
    @IBOutlet weak var nomDuMenu: UILabel!
    
    var menu: Menu!
    
    func miseEnPlace(menu: Menu) {
        self.menu = menu
        
        vue.layer.cornerRadius = 10
        vue.layer.borderColor = NOIR.cgColor
        vue.layer.borderWidth = 1
        
        imageDuMenu.image = self.menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        imageDuMenu.clipsToBounds = true
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2
        imageDuMenu.layer.borderWidth = 2
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        
        nomDuMenu.text = "Menu " + self.menu.pays
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONT_DE_BASE
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        
        
        
    }
    
}
