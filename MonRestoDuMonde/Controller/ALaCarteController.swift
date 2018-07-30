//
//  ALaCarteController.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-26.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class ALaCarteController: UITableViewController {
    
    let cellId = "PlatCell"
    var tousLesPlats = [ALaCarte]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vue = UIView(frame: tableView.bounds)
        vue.layer.addSublayer(Degrade())
        
        tableView.backgroundView = vue
        
        tousLesPlats = LesPlats.obtenir.carteComplet()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return tousLesPlats.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
        return tousLesPlats[section].plats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? PlatCell {
            cell.mienEnPlace(plat: plat)
            return cell
        }

        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let typeDePlat = tousLesPlats[section].type
    
        switch typeDePlat {
        case .entree: return "Nos Entrées"
        case .platPrincipal: return "Nos plats principaux"
        case .dessert: return "Le coin des gourmands"
        }
    
    }
    
    
  
}
