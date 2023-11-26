//
//  ContentView.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    let defaultAnime: AnimeModel.AnimeData = AnimeModel.AnimeData(
        attributes: AnimeModel.AnimeAtt(
            slug: "Slug with Relationships",
            averageRating: "5.0",
            synopsis: "Synopsis with Relationships",
            posterImage: AnimeModel.AnimeImg(original: "url_with_relationships")
        ),
        relationships: AnimeModel.StreamingInfo(streamingLinks: AnimeModel.Links(links: AnimeModel.MoreLinks(related: "blah")))    )
    var body: some View {
        TabView  {
            View_main()
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ViewB()
                .tabItem() {
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Search")
                }
            AnimeDetailView(anime: defaultAnime)
                .tabItem() {
                    Image(systemName: "slider.horizontal.3")
                    Text("Edit")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
