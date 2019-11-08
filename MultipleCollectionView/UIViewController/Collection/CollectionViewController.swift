//
//  CollectionViewController.swift
//  MultipleCollectionView
//
//  Created by Reona Kubo on 2019/11/08.
//  Copyright © 2019 Reona Kubo. All rights reserved.
//

import UIKit

final class CollectionViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView! {
        didSet {
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }

    private let reuseIdentifier = "collectionViewCell"
    private var colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in 0 ..< 20 {
            let randomColor = UIColor.init(
                red: CGFloat(arc4random_uniform(255)) / 255,
                green: CGFloat(arc4random_uniform(255)) / 255,
                blue: CGFloat(arc4random_uniform(255)) / 255,
                alpha: 1
            )
            colors.append(randomColor)
        }
    }
}

// MARK: - UICollectionViewDelegate

extension CollectionViewController: UICollectionViewDelegate {}

// MARK: - UICollectionViewDataSource

extension CollectionViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.contentView.backgroundColor = colors[indexPath.row]
        return cell
    }
}
