//
//  MovieResponse.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation

struct MovieResponse: Decodable {
    var page: Int?
    var results: [Movie]?
    var total_pages: Int?
    var total_results: Int?
}
