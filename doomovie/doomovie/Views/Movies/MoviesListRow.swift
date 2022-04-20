//
//  MoviesListRow.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MoviesListRow: View {
    var movie: Movie
    var body: some View {
        ZStack{
            NavigationLink(destination: MovieDetail(movie: movie).navigationBarHidden(true)){
                Rectangle().fill(Color.black).frame(height: 120).opacity(0.6)
            }.simultaneousGesture(TapGesture().onEnded({
                HapticsUtil().createVibration()
            }))
            DooText(text: movie.name ?? "---", color: .white, size: 20, weight: .bold)
        }.frame(height: 120).background(DooImage(path: movie.backdrop_path ?? "", height: 120)).cornerRadius(20)
    }
}
