//
//  NewsListViewController.swift
//  FastNews
//
//  Created by Fernando Ortiz on 10/22/17.
//  Copyright © 2017 Fernando Ortiz. All rights reserved.
//

import UIKit

class NewsListViewController: ViewController {

    // MARK: - Views -
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Attributes -
    var news: [News] = []
    
    // MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        loadNews()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { return }
        switch segueIdentifier {
        case "NewsDetailViewController":
            guard let viewController = segue.destination as? NewsDetailViewController else { return }
            guard let newsDetail = sender as? News else { return }
            viewController.news = newsDetail
        default:
            break
        }
    }
    
    // MARK: - Configuration -
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func loadNews() {
        APIClient.getNews(
            onSuccess: { news in
                self.news = news
                self.tableView.reloadData()
            },
            onFailure: { error in
                self.showError(error: error)
            }
        )
    }

}

extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as! NewsTableViewCell
        cell.configure(with: news[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let segueIdentifier = "NewsDetailViewController"
        let newsID = news[indexPath.row].id
        
        APIClient.getNewsDetail(
            fromNewsWithID: newsID,
            onSuccess: { newsItem in
                self.performSegue(withIdentifier: segueIdentifier, sender: newsItem)
            },
            onFailure: { error in
                self.showError(error: error)
            }
        )
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return NewsTableViewCell.height
    }
}
