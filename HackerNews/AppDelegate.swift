//
//  AppDelegate.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import Foundation
import UIKit


class AppDelegate: NSObject, UIApplicationDelegate{

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 255/255,
                                                               green: 102/255,
                                                               blue: 0/255,
                                                               alpha: 1.0)
        
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        return true
    }
}
