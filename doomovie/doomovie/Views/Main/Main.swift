//
//  ContentView.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 19/4/22.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ZStack{
            MoviesList().ignoresSafeArea()
        }.background(DooBackground())
    }
}
