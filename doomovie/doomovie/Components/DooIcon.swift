//
//  DooIcon.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooIcon: View {
    var name: String
    var color: Color = .onSurface
    var size: CGFloat = 24
    var type: DooIconType = .system
    var body: some View {
        if(type == .asset){
            Image(name).font(.system(size: size)).foregroundColor(color)
        }else{
            Image(systemName: name).font(.system(size: CGFloat(size))).foregroundColor(color)
        }
    }
}
