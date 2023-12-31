@_private(sourceFile: "ContentView.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/ContentView.swift", line: 43)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/ContentView.swift", line: 20)
        TabView  {
            View_main()
                .tabItem() {
                    Image(systemName: __designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "house.fill"))
                    Text(__designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Home"))
                }
            ViewB()
                .tabItem() {
                    Image(systemName: __designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass.circle.fill"))
                    Text(__designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Search"))
                }
            AnimeDetailView(anime: defaultAnime)
                .tabItem() {
                    Image(systemName: __designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "slider.horizontal.3"))
                    Text(__designTimeString("#5618.[1].[1].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Edit"))
                }
            
        }
    
#sourceLocation()
    }
}

import struct Anime_app.ContentView
import struct Anime_app.ContentView_Previews

