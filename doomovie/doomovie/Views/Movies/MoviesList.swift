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
                }
            }.background(DooBackground()).navigationBarHidden(true).overlay(
                DooPagination(pageSelected: $pageSelected, totalPages: totalPages)
                /*VStack(spacing: 0){
                    LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom).frame(width: UIScreen.main.bounds.width, height: 50)
                    Rectangle().fill(Color.black).frame(width: UIScreen.main.bounds.width, height: 100)
                }*/, alignment: .bottom)//.ignoresSafeArea(edges: .bottom)
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
