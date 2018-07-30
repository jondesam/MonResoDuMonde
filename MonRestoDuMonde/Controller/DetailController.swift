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
        print("Ca marche on a le Menu \(menu.pays)")
    }


}
