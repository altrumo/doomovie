//
//  ImageService.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import Alamofire

class ImageService{
    func getImage(path: String, onResponse: @escaping ((Data?) -> Void)){
        let url = "\(ConfigService().urlBaseImage)\(path)"
        AF.request(url, headers: ConfigService().headers).response { response in
          guard let data = response.value else {return}
            if(data != nil){
                onResponse(data!)
            }else{
                onResponse(nil)
            }
        }
    }
}
