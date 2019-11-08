//
//  MainViewController.swift
//  MultipleCollectionView
//
//  Created by Reona Kubo on 2019/11/08.
//  Copyright © 2019 Reona Kubo. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildren()
    }

    private func setupChildren() {
        // CollectionViewController
        let collectionViewController = CollectionViewController()
        addChild(collectionViewController)
        stackView.addArrangedSubview(collectionViewController.view)
        collectionViewController.didMove(toParent: self)

        // TableViewController
        let tableViewController = TableViewController()
        addChild(tableViewController)
        stackView.addArrangedSubview(tableViewController.view)
        tableViewController.didMove(toParent: self)
    }

}
