//
//  NewsViewController.swift
//  project-ios
//
//  Created by User on 18.04.22.
//  Copyright © 2022 viktoriya. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    var posts: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        APIManager.shared.getPost(id: "post1", imageID: "1") { [self]
            res1 in self.posts.append(res1!)
            APIManager.shared.getPost(id: "post2", imageID: "2") {
                res2 in self.posts.append(res2!)
                APIManager.shared.getPost(id: "post3", imageID: "3") {
                    res3 in self.posts.append(res3!)
                    DispatchQueue.main.async {
                        self.table.reloadData()
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
            
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        cell.postNmae.text = posts[indexPath.row].name
        cell.postDate.text = posts[indexPath.row].date
        cell.postText.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        return cell
    }
}
