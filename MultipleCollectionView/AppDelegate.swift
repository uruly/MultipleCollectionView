//
//  AppDelegate.swift
//  MultipleCollectionView
//
//  Created by Reona Kubo on 2019/11/08.
//  Copyright © 2019 Reona Kubo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow()
        window.rootViewController = MainViewController()
        window.makeKeyAndVisible()
        self.window = window

        return true
    }

}

