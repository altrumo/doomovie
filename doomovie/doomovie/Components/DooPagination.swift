//
//  DooPagination.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooPagination: View {
    @Binding var pageSelected: Int
    var totalPages: Int = 1
    var body: some View {
        HStack{
            ZStack{
                Circle().fill(Color.onSurfaceMedium).frame(width: 28, height: 28)
                DooIcon(name: "chevron.left", color: .surface, size: 16)
            }.onTapGesture {
                goToLastPage()
            }
            HStack(spacing: 20){
                DooText(text: setText(), color: .surface, size: 16)
            }.padding(6).padding(.horizontal, 12).background(Color.onSurfaceMedium).cornerRadius(20)
            ZStack{
                Circle().fill(Color.onSurfaceMedium).frame(width: 28, height: 28)
                DooIcon(name: "chevron.right", color: .surface , size: 16)
            }.onTapGesture {
                goToNextPage()
            }
        }.padding(12).background(Color.surface).cornerRadius(20).opacity(0.8)
    }
}

extension DooPagination{
    func goToLastPage(){
        HapticsUtil().createVibration()
        if(pageSelected != 1){
            withAnimation{
                pageSelected -= 1
            }
        }
    }
    func goToNextPage(){
        HapticsUtil().createVibration()
        if(pageSelected != totalPages){
            withAnimation{
                pageSelected += 1
            }
        }
    }
    func setText()->String{
        return "\(pageSelected) de \(totalPages)"
    }
}
