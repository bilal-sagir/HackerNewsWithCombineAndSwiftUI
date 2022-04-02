//
//  HackerNewsApp.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import SwiftUI

@main
struct HackerNewsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            StoryListView()
        }
    }
}
