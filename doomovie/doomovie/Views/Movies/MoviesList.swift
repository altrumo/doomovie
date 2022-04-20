//
//  MoviesList.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MoviesList: View {
    @State var movies: [Movie] = []
    @State var pageSelected: Int = 1
    @State var totalPages: Int = 1
    @State var totalResults: Int = 1
    var body: some View {
        NavigationView{
            ZStack{
            ScrollView(showsIndicators: false){
                LazyVStack(spacing: 20){
                    ForEach(movies, id: \.id){ movie in
                        MoviesListRow(movie: movie).padding(.horizontal)
                    }
                }.padding(.bottom, 100)
            }.background(DooBackground()).navigationBarHidden(true).overlay(
                DooPagination(pageSelected: $pageSelected, totalPages: totalPages), alignment: .bottom)
            }
        }.onAppear{
            getMovies()
        }.onChange(of: pageSelected){ value in
            getMovies()
        }
    }
}

extension MoviesList{
    func getMovies(){
        MovieService().getMovies(page: pageSelected){ response in
            if(response != nil){
                movies = response!.results ?? []
                totalPages = response!.total_pages ?? 1
                totalResults = response!.total_results ?? 1
            }
        }
    }
}
