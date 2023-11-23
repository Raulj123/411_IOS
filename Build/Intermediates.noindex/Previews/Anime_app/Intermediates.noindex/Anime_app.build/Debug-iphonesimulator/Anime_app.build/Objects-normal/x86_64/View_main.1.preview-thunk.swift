@_private(sourceFile: "View_main.swift") import Anime_app
import SwiftUI
import SwiftUI

extension View_main_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/View_main.swift", line: 35)
        View_main()
    
#sourceLocation()
    }
}

extension View_main {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/View_main.swift", line: 13)
        NavigationStack {
            List(animeVM.dataArray, id: \.self) { anime in
                           VStack(alignment: .leading) {
                               Text(anime.attributes.slug)
                                   .font(.headline)
                               Text("Synopsis: \(anime.attributes.synopsis)")
                                   .font(.subheadline)
                               Text("Rating: \(anime.attributes.averageRating)")
                                   .font(.subheadline)
                           }
                       }
                       .listStyle(.plain)
                       .navigationTitle(__designTimeString("#3894.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Animes"))
                   }
        .task {
            await animeVM.getData()
        }
    
#sourceLocation()
    }
}

import struct Anime_app.View_main
import struct Anime_app.View_main_Previews

