@_private(sourceFile: "View_main.swift") import Anime_app
import SwiftUI
import SwiftUI

extension View_main_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/View_main.swift", line: 51)
        View_main()
    
#sourceLocation()
    }
}

extension View_main {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/View_main.swift", line: 13)
        NavigationStack {
                   ScrollView {
                       LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: __designTimeInteger("#1654.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: 16)) {
                           ForEach(animeVM.dataArray, id: \.self) { anime in
                               NavigationLink(destination: AnimeDetailView(anime: anime)) {
                                   VStack {
                                       AsyncImage(url: URL(string: anime.attributes.posterImage.original)) { image in
                                           image.resizable()
                                               .aspectRatio(contentMode: .fit)
                                       } placeholder: {
                                           
                                           ProgressView()
                                       }
                                       .frame(height: __designTimeInteger("#1654.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 150))
                                       Text(anime.attributes.slug)
                                           .font(.headline)
                                           .multilineTextAlignment(.center)
                                           .padding(.top, __designTimeInteger("#1654.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[1].modifier[2].arg[1].value", fallback: 8))
                                   }
                                   .padding()
                                   .background(Color.white)
                                   .cornerRadius(__designTimeInteger("#1654.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                                   .shadow(radius: __designTimeInteger("#1654.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
                               }
                           }
                       }
                       .padding()
                   }
                   .navigationTitle(__designTimeString("#1654.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Animes"))
               }
               .task {
                   await animeVM.getData()
               }
           
#sourceLocation()
    }
}

import struct Anime_app.View_main
import struct Anime_app.View_main_Previews

