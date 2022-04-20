//
//  MovieDetailHeader.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetailHeader: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var movie:Movie
    var body: some View {
        ZStack{
            ZStack{
                DooImage(path: movie.backdrop_path ?? "", width: UIScreen.main.bounds.width, height: 300).frame(width: UIScreen.main.bounds.width, height: 300)
                Rectangle().fill(Color.black).frame(width: UIScreen.main.bounds.width, height: 300).opacity(0.8)
                //LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
            }.cornerRadius(20)
            VStack{
                HStack{
                    DooButton(iconName: "chevron.left", size: 40, type: .icon, action: {
                        presentationMode.wrappedValue.dismiss()
                    }).opacity(0.8)
                    Spacer()
                }.padding(.horizontal).padding(.top, ViewUtil().getSafeAreaSize(.top))
                Spacer()
                HStack{
                    DooImage(path: movie.poster_path, width: 160, height: 220).padding(.bottom, -120)
                    Spacer()
                    VStack{
                        Spacer()
                        MovieDetailHeaderButtons(movie: movie).padding(.bottom, -60)
                    }

                }.padding(.horizontal)
                
                /*HStack{
                    DooText(text: movie.name ?? "", color: .white, size: 24, weight: .bold)
                    Spacer()
                }*/
            }.frame(width: UIScreen.main.bounds.width, height:300)
            /*VStack{
                Spacer()
                HStack{
                    Spacer()
                    GameDetailHeaderButtons(game:game)
                }.padding(.leading, 20).padding(.trailing, 10).padding(.bottom, -26)
            }*/
        }
    }
}
