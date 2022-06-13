//
//  OneNewViewController.swift
//  project-ios
//
//  Created by Михаил on 13.06.2022.
//  Copyright © 2022 viktoriya. All rights reserved.
//

import UIKit

class OneNewViewController: UIViewController {

    var article: Post!
    
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var lableDate: UILabel!
    @IBOutlet weak var lableText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableName.text=article.name
        lableDate.text=article.date
        lableText.text=article.text
        imageView.image=article.image
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
