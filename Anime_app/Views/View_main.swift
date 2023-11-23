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
