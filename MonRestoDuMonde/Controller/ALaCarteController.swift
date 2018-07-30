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

        return UITableViewCell
    }
  
}
