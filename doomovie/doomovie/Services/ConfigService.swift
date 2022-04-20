//
//  ConfigService.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import Alamofire

class ConfigService{
    public let headers:HTTPHeaders = [
        //"Region" : Locale.current.regionCode?.lowercased() ?? "",
        //"Authorization" : UserDefaultsManager().getUserDefault(key: "token") ?? ""
    ]
    public let urlBase:String = "https://api.themoviedb.org/3/tv/popular"
    public let urlBaseImage: String = "https://image.tmdb.org/t/p/w500"
    public let apiKey: String = "c6aeee577586ba38e487b74dfede5deb"
    public let language: String = LocalizationUtil().getLanguage()
}
