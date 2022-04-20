//
//  MovieDetailRating.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetailRating: View {
    var movie: Movie
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            DooText(text: "rating".localized(), color: .onSurfaceMedium, size: 24, weight: .bold)
            VStack(spacing: 0){
                VStack(spacing: 0){
                    DooText(text: setRatingAverageText(), color: setRatingColor(), size: 48, weight: .bold)
                    DooText(text: setVotesText(), color: .onSurface, size: 14).padding(.bottom, 10)
                }
                DooText(text: setRatingText(), color: .white, size: 16, weight: .bold).padding(.vertical, 6).padding(.horizontal, 16).frame(minWidth: 160).background(setRatingColor())
            }.background(Color.surface).clipShape(RoundedRectangle(cornerRadius: 20)).opacity(0.6).padding(.bottom, 8).padding(.trailing, 8)
        }.padding(.leading, 20)
    }
}

extension MovieDetailRating{
    func setRatingAverageText()->String{
        if(movie.vote_average != 0){
            return "\(movie.vote_average!)"
        }else{
            return "---"
        }
    }
    func setRatingColor()->Color{
        if(movie.vote_average != 0){
            return movie.vote_average!.setRatingColor()
        }else{
            return Color.onSurface
        }
    }
    func setRatingText()->String{
        if(movie.vote_average != 0){
            return movie.vote_average!.setRatingText().uppercased()
        }else{
            return "---"
        }
    }
    func setVotesText()->String{
        if(movie.vote_count == 1){
            return "1 " + "vote".localized().lowercased()
        }else{
            return String(movie.vote_count ?? 0) + " " + "votes".localized().lowercased()
        }
    }
}

