//
//  MovieDetailSummary.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetailSummary: View {
    var movie: Movie
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            DooText(text: "summary".localized(), color: .onSurfaceMedium, size: 24, weight: .bold)
            DooText(text: movie.overview ?? "---", color: .onSurface).frame(maxWidth: UIScreen.main.bounds.width-60)
        }.padding(.leading, 20)
    }
}
