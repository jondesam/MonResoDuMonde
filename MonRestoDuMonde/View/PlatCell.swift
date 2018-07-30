//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-28.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {

    
    @IBOutlet weak var imageDuPlat: UIImageView!
    @IBOutlet weak var descDuPlat: UILabel!
    
    var plat : Plat!
    
    func mienEnPlace(plat: Plat) {
        self.plat = plat
        
        imageDuPlat.image = self.plat.image
        imageDuPlat.contentMode = .scaleAspectFill
        imageDuPlat.clipsToBounds = true
        imageDuPlat.layer.cornerRadius = 20
        
        descDuPlat.text = self.plat.desc
        descDuPlat.textAlignment = .center
        descDuPlat.numberOfLines = 0
        descDuPlat.font = FONT_DE_BASE
        descDuPlat.textColor = GRIS_TRES_FONCE
        
        
    }
    

}
