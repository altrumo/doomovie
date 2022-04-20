//
//  ContentView.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 19/4/22.
//

import SwiftUI

struct Main: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        ZStack{
            MoviesList().ignoresSafeArea()
            DooLoader(isVisible: appEnvironment.loading)
        }.background(DooBackground())
    }
}
