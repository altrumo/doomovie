//
//  DooBackground.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooBackground: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        ZStack{
            Image("collage").resizable().scaledToFill().frame(maxWidth: .infinity, maxHeight: .infinity).clipped()
            Color.black.opacity(0.95)
        }.ignoresSafeArea()
    }
}
