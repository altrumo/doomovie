//
//  LocalizationUtil.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation

class LocalizationUtil{
    var languagesAvailable = ["es", "en", "fr", "it", "de"]
    func getLanguage()->String{
        let languages = UserDefaults.standard.stringArray(forKey: "AppleLanguages")
        if(languages != nil && languages!.count>0){
            let language = String(languages!.first!.split{$0 == "-"}[0])
            if(languagesAvailable.contains(language)){
                return language
            }else{
                return "en"
            }
        }else{
            return "en"
        }
    }
    func getLocalizationFile(_ language: String)->[String: String]?{
        if let bundlePath = Bundle.main.path(forResource: language, ofType: "json"){
            do{
                let data = try Data(contentsOf: URL(fileURLWithPath: bundlePath), options: .mappedIfSafe)
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String]
                if(json != nil){
                    return json!
                }else{
                    return nil
                }
            } catch{
                print("Error Localization")
            }
        }else{
            return nil
        }
        return nil
    }
}

extension String{
    func localized()-> String{
        let language = LocalizationUtil().getLanguage()
        let languageFile = LocalizationUtil().getLocalizationFile(language)
        if(languageFile != nil){
            let keyValueFound = languageFile!.first(where: {$0.key == self})
            if(keyValueFound != nil && keyValueFound!.value != ""){
                return keyValueFound!.value
            }else{
                return "**\(self)**"
            }
        }else{
            return "**\(self)**"
        }
    }
}
