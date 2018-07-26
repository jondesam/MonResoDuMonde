//
//  MonNav.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-26.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.barTintColor = NOIR
        navigationBar.tintColor =  GRIS_TRES_CLAIR
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as Any, .foregroundColor: GRIS_TRES_CLAIR]
    }

}
