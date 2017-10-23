//
//  NewsTableViewCell.swift
//  FastNews
//
//  Created by Fernando Ortiz on 10/22/17.
//  Copyright © 2017 Fernando Ortiz. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    // MARK: - Views -
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsBodyLabel: UILabel!

    // MARK: - Life cycle -
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration -
    func configure(with news: News) {
        newsImageView.image = UIImage(named: news.imagePath ?? "placeholder")
        newsTitleLabel.text = news.title
        newsBodyLabel.text = news.content
    }
    
    // MARK: - Size -
    static var height: CGFloat {
        return 70.0
    }

}
