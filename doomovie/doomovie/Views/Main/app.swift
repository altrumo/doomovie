//
//  doomovieApp.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 19/4/22.
//

import SwiftUI

@main
struct app: App {
    @StateObject var appEnvironment = AppEnvironment()
    var body: some Scene {
        WindowGroup {
            Main().environmentObject(appEnvironment)
        }
    }
}

class AppEnvironment: ObservableObject{
    @Published var isVisibleContent = false
}
