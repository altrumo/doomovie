//
//  Movie.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import CoreGraphics

struct Movie: Decodable {
    var backdrop_path: String?
    var first_air_date: String?
    var genre_ids: [Int]?
    var id: Int?
    var name: String?
    var origin_country: [String]?
    var original_language: String?
    var original_name: String?
    var overview: String?
    var popularity: CGFloat?
    var poster_path: String?
    var vote_average: Double?
    var vote_count: Int?
}

