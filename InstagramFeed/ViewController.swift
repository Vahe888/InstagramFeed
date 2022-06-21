//
//  ViewController.swift
//  InstagramFeed
//
//  Created by Vahe Israyelyan on 04.06.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var models = [InstagramPost]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        models.append(InstagramPost(numberOfLikes: 100,
                                    username: "Vahe Israyelyan",
                                    userImageName: "user",
                                    postImageName: "post1"))
        
        models.append(InstagramPost(numberOfLikes: 200,
                                    username: "Rafael Minasyan",
                                    userImageName: "user",
                                    postImageName: "post2"))
        
        models.append(InstagramPost(numberOfLikes: 300,
                                    username: "Vahe Israyelyan",
                                    userImageName: "user",
                                    postImageName: "post3"))
        
        models.append(InstagramPost(numberOfLikes: 400,
                                    username: "Nora Shahbazyan",
                                    userImageName: "user",
                                    postImageName: "post1"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120 + 140 + view.frame.size.width
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

struct InstagramPost {
    let numberOfLikes: Int
    let username: String
    let userImageName: String
    let postImageName: String
}
