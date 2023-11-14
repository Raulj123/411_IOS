@_private(sourceFile: "ContentView.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/ContentView.swift", line: 35)
        __designTimeSelection(ContentView(), "#5109.[2].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/ContentView.swift", line: 12)
        __designTimeSelection(TabView  {
            __designTimeSelection(View_main()
                .tabItem() {
                    __designTimeSelection(Image(systemName: __designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "house.fill")), "#5109.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
                    __designTimeSelection(Text(__designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Home")), "#5109.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1]")
                }, "#5109.[1].[0].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(ViewB()
                .tabItem() {
                    __designTimeSelection(Image(systemName: __designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "magnifyingglass.circle.fill")), "#5109.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0]")
                    __designTimeSelection(Text(__designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Search")), "#5109.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[1]")
                }, "#5109.[1].[0].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(ViewA()
                .tabItem() {
                    __designTimeSelection(Image(systemName: __designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "slider.horizontal.3")), "#5109.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0]")
                    __designTimeSelection(Text(__designTimeString("#5109.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Edit")), "#5109.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[1]")
                }, "#5109.[1].[0].property.[0].[0].arg[0].value.[2]")
            
        }, "#5109.[1].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Anime_app.ContentView
import struct Anime_app.ContentView_Previews

