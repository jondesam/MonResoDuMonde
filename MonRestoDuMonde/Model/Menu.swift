//
//  Menu.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-27.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class Menu {
    
    private var _pays: String
    private var _image: UIImage
    private var _plat: [Plat]
    
    var pays: String {
        return _pays
    }
    
    var image: UIImage {
        return _image
    }
    
    var plat:[Plat] {
        return _plat
    }
    
    
    init(pays: String, image: UIImage) {
        self._pays = pays
        self._image = image
        self._plat = [Plat]()
    }
    
}



