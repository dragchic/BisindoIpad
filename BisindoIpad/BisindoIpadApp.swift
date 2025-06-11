//
//  BisindoIpadApp.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 10/06/25.
//

import SwiftUI

@main
struct BisindolpadApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .supportedOrientations(.landscape) // Force landscape
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.all

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
}

