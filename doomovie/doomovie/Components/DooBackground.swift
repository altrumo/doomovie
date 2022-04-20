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
            Color.black.opacity(appEnvironment.isVisibleContent ? 0.95 : 0.95)
            /*if(!appEnvironment.isVisibleContent){
                LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
            }*/
        }.ignoresSafeArea()
    }
}
