//
//  MovieDetail.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import SwiftUI

struct MovieDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var movie: Movie
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    DooButton(iconName: "chevron.left", type: .icon, action:{
                        presentationMode.wrappedValue.dismiss()
                    })
                    Spacer()
                }
                Spacer()
            }
            DooText(text: movie.name ?? "")
        }
        
    }
}
