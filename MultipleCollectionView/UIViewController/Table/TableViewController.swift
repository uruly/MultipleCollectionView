//
//  TableViewController.swift
//  MultipleCollectionView
//
//  Created by Reona Kubo on 2019/11/08.
//  Copyright © 2019 Reona Kubo. All rights reserved.
//

import UIKit

final class TableViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    @IBOutlet weak var tableViewConstraintHeight: NSLayoutConstraint!

    private let reuseIdentifier = "cell"
    private var data: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        data = Array(repeating: "hoge", count: 20)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // Set tableView height to content size height.
        tableView.layoutIfNeeded()
        tableViewConstraintHeight.constant = tableView.contentSize.height
        view.layoutIfNeeded()
        view.frame.size.height = tableView.contentSize.height
    }
}

// MARK: - TableViewDelegate

extension TableViewController: UITableViewDelegate {}

// MARK: - UITableViewDataSource

extension TableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}
