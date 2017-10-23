//
//  NewsDetailViewController.swift
//  FastNews
//
//  Created by Fernando Ortiz on 10/22/17.
//  Copyright © 2017 Fernando Ortiz. All rights reserved.
//

import UIKit

class NewsDetailViewController: ViewController {
    
    // MARK: - Views -
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var journalistImageView: UIImageView!
    @IBOutlet weak var journalistNameLabel: UILabel!
    
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewHeightConstraint: NSLayoutConstraint!
    
    // MARK: - Attributes -
    var news: News!

    // MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        configureUI()
    }
    
    // MARK: - Configuration -
    private func configureUI() {
        imageView.image = UIImage(named: news.imagePath ?? "placeholder")
        titleLabel.text = news.title
        bodyLabel.text = news.content
        journalistImageView.image = UIImage(named: news.journalist?.photoPath ?? "placeholder")
        if let journalistName = news.journalist?.name {
            journalistNameLabel.text = journalistName
        }
    }
    
    // MARK: - Actions -
    @IBAction func journalistViewPressed() {
        
    }
    
}

// MARK: - UIScrollViewDelegate -
extension NewsDetailViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if offset < 0.0 {
            imageViewTopConstraint.constant = offset
            imageViewHeightConstraint.constant = 250.0 - offset
        } else {
            imageViewTopConstraint.constant = 0.0
            imageViewHeightConstraint.constant = 250.0
        }
    }
}
