//
//  MoviesService.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import Alamofire

class MovieService{
    func getMovies(page: Int, onResponse: @escaping ((MovieResponse?) -> Void)){
        let url = "\(ConfigService().urlBase)"
        let parameters: [String: String] = ["api_key": ConfigService().apiKey, "language" : ConfigService().language, "page" : String(page)]
        AF.request(url, method: .get, parameters: parameters, headers: ConfigService().headers).response { response in
          guard let data = response.value else {return}
            do {
                let movieResponse = try JSONDecoder().decode(MovieResponse.self, from: data!)
                onResponse(movieResponse)
            }catch{
                onResponse(nil)
            }
        }
    }
}
