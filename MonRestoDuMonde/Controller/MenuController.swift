//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by MyMac on 18-07-26.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellID = "MenuCell"
    let segueID = "versDetail"
    
    var menus = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les Menu du monde"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let vue = UIView(frame: collectionView.bounds)
        vue.layer.addSublayer(Degrade())
        collectionView.backgroundView = vue
        
    //    LesPlats.obtenir.lesMenus()
    //   LesPlats.lesMenus(LesPlats)
        menus = LesPlats.obtenir.lesMenus()
        collectionView.reloadData()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menu = menus[indexPath.item]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell{
        
            cell.miseEnPlace(menu: menu)
           // cell.backgroundColor = GRIS_TRES_FONCE
            return cell
            
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = menus[indexPath.item]
        performSegue(withIdentifier: segueID, sender: menu)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let detail = segue.destination as? DetailController {
                detail.menu = sender as? Menu
            }
        }
    }

}
