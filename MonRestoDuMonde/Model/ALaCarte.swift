//
//  aLaCarte.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-28.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class ALaCarte {
    
    private var _type:Type
    private var _plates: [Plat]
    
    var type: Type {
        return _type
    }
    
    var plats: [Plat] {
        return _plates
    }
    
    init(type: Type) {
        self._type = type
        self._plates = [plat]()
    }
}
