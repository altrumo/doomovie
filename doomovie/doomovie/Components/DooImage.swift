//
//  DooImage.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct DooImage: View {
    var path: String?
    var name: String = ""
    var type: String?
    var cornerRadius:CGFloat = 5
    var width:CGFloat?
    var height:CGFloat = 100
    @State var image: UIImage? = nil
    var body: some View {
        HStack{
            if(image != nil){
                Image(uiImage: image!).resizable().scaledToFill().frame(width: width != nil ? width! : nil, height: height).contentShape(Rectangle()).cornerRadius(cornerRadius).clipped()
            }else{
                ZStack{
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.surface).frame(width: width, height: height)
                    DooIcon(name: "photo.fill", color: .onSurface)
                }
            }
        }.onAppear{
            getImage()
        }
    }
}

extension DooImage{
    func getImage(){
        if let imageFound = CoreDataManager.shared.getImage(id: path ?? ""){
            self.image = UIImage(data: imageFound.data!) ?? UIImage()
        }else{
            downloadImage()
        }
    }
    
    func downloadImage(){
        ImageService().getImage(path: path ?? ""){ response in
            if(response != nil){
                self.image = UIImage(data: response!)
                CoreDataManager().saveImage(id: path ?? "", data: response!)
            }
        }
    }
}
