//
//  MovieDetailHeaderButtons.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetailHeaderButtons: View {
    var movie:Movie
    @State var liked: Bool = false
    @State var favorited: Bool = false
    @State var collected: Bool = false
    var size: CGFloat = 46
    var iconSize: CGFloat = 18
    var body: some View {
        VStack{
            HStack(spacing: 10){
                DooButton(iconColor: Color.red, iconBackground: .surface , iconName: liked ? "heart.fill" : "heart", iconSize: iconSize, size: size, type: .icon ,action: {
                        setLike()
                    }
                )
                DooButton(iconColor: Color.yellow, iconBackground: .surface , iconName: favorited ? "star.fill" : "star", iconSize: iconSize, size: size, type: .icon ,action: {
                        setFavorite()
                    }
                )
                DooButton(iconColor: Color.blue, iconBackground: .surface , iconName: collected ? "book.closed.fill" : "book.closed", iconSize: iconSize, size: size, type: .icon ,action: {
                        setCollect()
                    }
                )
            }
            HStack{
                DooIcon(name: "mouth", size: 14)
                DooText(text: setLanguageText(), color: .onSurfaceMedium, size: 12)
                Spacer()
                if(movie.origin_country != nil){
                    HStack{
                        DooIcon(name: "network", size: 14)
                        ForEach(movie.origin_country!,  id: \.self){ country in
                            DooText(text: country, color: .onSurfaceMedium, size: 12)
                        }
                        Spacer()
                    }.padding(.leading,  10)
                }
            }.padding(.leading, 20).padding(.top, 10)
        }
    }
}

extension MovieDetailHeaderButtons{
    func setLike(){
        liked.toggle()
        HapticsUtil().createVibration()
        /*withAnimation(.spring()){
            likeScale = 0.8
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            withAnimation(.spring()){
                likeScale = 1
            }
        }*/
    }
    func setFavorite(){
        favorited.toggle()
        HapticsUtil().createVibration()
    }
    func setCollect(){
        collected.toggle()
        HapticsUtil().createVibration()
    }
    func setLanguageText()->String{
        return "language-\(movie.original_language ?? "")".localized()
    }
}
