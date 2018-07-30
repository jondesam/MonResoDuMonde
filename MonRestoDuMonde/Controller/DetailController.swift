//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-29.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scroll)
        
        guard menu != nil else {return}
        miseEnPlace(menu: menu!)
        
    }
    func miseEnPlace(menu: Menu) {
        let imageDuMonde = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width , height: 250))
        imageDuMonde.image = menu.image
        imageDuMonde.contentMode = .scaleAspectFill
        imageDuMonde.clipsToBounds = true
        scroll.addSubview(imageDuMonde)
        var maxY = imageDuMonde.frame.maxY
        
        let nomDuMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.textColor = .red
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        scroll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat in menu.plats {
            let vue = PlatVue(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnPlace(plat: plat)
            scroll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width , height: maxY + 50 )
        
        
    }


}
