//
//  PostTableViewCell.swift
//  InstagramFeed
//
//  Created by Vahe Israyelyan on 04.06.22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    
    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with model: InstagramPost) {
        self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.usernameLabel.text = model.username
        self.postImageView.image = UIImage(named: model.postImageName)
        self.userImageView.image = UIImage(named: model.userImageName)
    }
    
}
