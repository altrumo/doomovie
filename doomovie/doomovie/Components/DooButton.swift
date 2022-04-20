//
//  DooButton.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooButton: View {
    var text: String = ""
    var color: Color = .primary
    var cornerRadius: CGFloat = 40
    var disabled: Bool = false
    var iconColor: Color = .onSurface
    var iconBackground: Color = .onSurfaceDark
    var iconName: String = ""
    var iconSize: CGFloat = 18
    var iconType: DooIconType = .system
    var loading: Bool = false
    var outlined: Bool = false
    var size: CGFloat = 24
    var type: DooButtonType = .text
    var action: ()->Void
    var body: some View {
        if(type == .text){
            Button(action: action){
                ZStack{
                    DooText(text: text, color: setTextColor(), size: 16).opacity(loading ? 0 : 1)
                        .frame(maxWidth: .infinity).padding(.vertical, 14).background(setBackgroundColor()).cornerRadius(cornerRadius).overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(setOutlineColor(), lineWidth: 1)).opacity(disabled ? 0.6 : 1)
                    DooLoader(isVisible: loading)
                }
            }.disabled(disabled)
        }else if(type == .icon){
            Button(action: action){
                ZStack{
                    Circle().fill(iconBackground).frame(width: size, height: size)
                    DooIcon(name: iconName, color: iconColor, size: iconSize, type: iconType)
                }.onTapGesture {
                    action()
                    HapticsUtil().createVibration()
                }
            }
        }
    }
}

extension DooButton{
    func setBackgroundColor()->Color{
        if(outlined){
            return .clear
        }else{
            return color
        }
    }
    func setOutlineColor()->Color{
        if(outlined){
            return color
        }else{
            return .clear
        }
    }
    func setTextColor()->Color{
        if(outlined){
            return color
        }else{
            return .white
        }
    }
}

