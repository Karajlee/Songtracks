//
//  SongtracksApp.swift
//  Songtracks
//
//  Created by Kara Lee on 12/3/23.
//

import SwiftUI
import FirebaseCore
import Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct SongtracksApp: App {
    @StateObject var authViewModel = AuthViewModel()
        @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(authViewModel)
            }
        }
}
