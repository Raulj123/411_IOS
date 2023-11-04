@_private(sourceFile: "ContentView.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/ContentView.swift", line: 24)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/ContentView.swift", line: 12)
        TabView  {
            View_main()
                .tabItem() {
                    Image(systemName: __designTimeString("#9816.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "house.fill"))
                    Text(__designTimeString("#9816.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Home"))
                }
        }
    
#sourceLocation()
    }
}

import struct Anime_app.ContentView
import struct Anime_app.ContentView_Previews

