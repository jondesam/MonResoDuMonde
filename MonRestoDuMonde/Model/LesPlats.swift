//
//  LesPlats.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-27.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class LessPlats {
    static let obtenir = LessPlats()
    
    func lesMenus() -> [Menu]{
        var menus = [Menu]()
        let it  = Menu(pays: ITALIE, image: #imageLiteral(resourceName: "pizza"))
        let jap = Menu(pays: JAPON, image: #imageLiteral(resourceName: "sushis"))
        let chi = Menu(pays: CHINE, image: #imageLiteral(resourceName: "crevette aigre doux"))
        let usa  = Menu(pays: USA, image: #imageLiteral(resourceName: "burger"))
        let mex = Menu(pays: MEXIQUE, image: #imageLiteral(resourceName: "fajitas"))
        let esp = Menu(pays: ESPAGNE, image: #imageLiteral(resourceName: "paella"))
        let sui = Menu(pays: SUISSE, image: #imageLiteral(resourceName: "fondue"))
        menus.append(contentsOf:  [it, jap, chi, usa, mex, esp, sui])
        
        
        return menus
    }
}

