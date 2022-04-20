//
//  DooLoader.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI
import ActivityIndicatorView

struct DooLoader: View {
    var isVisible: Bool
    var size: CGFloat = 24
    var body: some View {
        if(isVisible){
            ActivityIndicatorView(isVisible: .constant(true), type: .gradient([.primary, .white])).frame(width: size, height: size).foregroundColor(.white).padding().background(Color.surface).cornerRadius(20).opacity(0.8)
        }
    }
}
