//
//  FavoriteViewController.swift
//  project-ios
//
//  Created by User on 18.04.22.
//  Copyright © 2022 viktoriya. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavoriteTableViewCell
        switch indexPath.row {
            case 0:
            cell.pic1.image = UIImage(named: "1")
            cell.pic2.image = UIImage(named: "2")
            cell.pic3.image = UIImage(named: "3")
            case 1:
            cell.pic1.image = UIImage(named: "4")
            cell.pic2.image = UIImage(named: "5")
            cell.pic3.image = UIImage(named: "6")
        default:
            cell.pic1.image = UIImage(named: "3")
        }
        
        return cell
    }

    
}
