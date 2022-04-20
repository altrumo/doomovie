//
//  MovieDetail.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetail: View {
    var movie:Movie
    
    var body: some View {
        ZStack{
            DooBackground()
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading){
                    MovieDetailHeader(movie: movie)
                    VStack(alignment: .leading, spacing: 60){
                        MovieDetailSummary(movie: movie)
                        MovieDetailRating(movie: movie)
                    }.padding(.top, 100)
                }.padding(.bottom, 100)
            }.ignoresSafeArea()
        }
    }
}

