//
//  View_main.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/4/23.
//

import SwiftUI

struct View_main: View {
    @StateObject var animeVM = AnimeModel()
    var body: some View {
        NavigationStack {
                   ScrollView {
                       LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                           ForEach(animeVM.dataArray, id: \.self) { anime in
                               NavigationLink(destination: AnimeDetailView(anime: anime)) {
                                   VStack {
                                       AsyncImage(url: URL(string: anime.attributes.posterImage.original)) { image in
                                           image.resizable()
                                               .aspectRatio(contentMode: .fit)
                                       } placeholder: {
                                           
                                           ProgressView()
                                       }
                                       .frame(height: 150)
                                       Text(anime.attributes.slug)
                                           .font(.headline)
                                           .multilineTextAlignment(.center)
                                           .padding(.top, 8)
                                   }
                                   .padding()
                                   .background(Color.white)
                                   .cornerRadius(10)
                                   .shadow(radius: 5)
                               }
                           }
                       }
                       .padding()
                   }
                   .navigationTitle("Animes")
               }
               .task {
                   await animeVM.getData()
               }
           }
       }

struct View_main_Previews: PreviewProvider {
    static var previews: some View {
        View_main()
    }
}
