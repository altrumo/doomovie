//
//  DooText.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooText: View {
    var text: String
    var color: Color = .onSurface
    var font: String?
    var size: CGFloat = 12
    var weight: Font.Weight = .regular
    var body: some View {
        if(font != nil){
            Text(text).font(.custom(font!, size: size)).foregroundColor(color)
        }else{
            Text(text).font(.system(size: size, weight: weight )).foregroundColor(color)
        }
    }
}

