//
//  PlatVue.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-29.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class PlatVue: UIView {

    var typeDePlat: UILabel?
    var imageDuplat: UIImageView?
    var descriptionDuPlat: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace(plat: Plat) {
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width - 40, height: 50))
        typeDePlat?.text = convertirTypeEnPlat(type: plat.type)
        typeDePlat?.textAlignment = .left
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIR
        guard typeDePlat != nil else { return}
        addSubview(typeDePlat!)
        var maxY = typeDePlat!.frame.maxY
        
        imageDuplat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuplat?.image = plat.image
        imageDuplat?.contentMode = .scaleAspectFill
        imageDuplat?.clipsToBounds = true
        guard imageDuplat != nil else  { return }
        addSubview(imageDuplat!)
        maxY = imageDuplat!.frame.maxY
        
        descriptionDuPlat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width - 40 , height: 100))
        descriptionDuPlat?.numberOfLines = 0
        descriptionDuPlat?.text = plat.desc
        descriptionDuPlat?.font = FONT_DE_BASE
        descriptionDuPlat?.textColor = GRIS_TRES_CLAIR
        descriptionDuPlat?.textAlignment = .center
        guard descriptionDuPlat != nil else { return }
        addSubview(descriptionDuPlat!)
    }
    
    func convertirTypeEnPlat(type: Type) -> String {
        switch type {
        case .entree: return "Entrée"
        case .platPrincipal: return "Plat principal"
        case .dessert: return "Dessert"
        }
    }
}
