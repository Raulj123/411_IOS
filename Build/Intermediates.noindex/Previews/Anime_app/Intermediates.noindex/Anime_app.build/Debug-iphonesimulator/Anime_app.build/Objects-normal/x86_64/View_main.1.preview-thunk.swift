@_private(sourceFile: "View_main.swift") import Anime_app
import SwiftUI
import SwiftUI

extension View_main_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/View_main.swift", line: 25)
        View_main()
    
#sourceLocation()
    }
}

extension View_main {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/View_main.swift", line: 12)
        ZStack {
            Color.blue
            Image(systemName: __designTimeString("#9608.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "house.fill"))
                .foregroundColor(Color.white)
                .font(.system(size: __designTimeFloat("#9608.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 100.0)))
         
            
        }
    
#sourceLocation()
    }
}

import struct Anime_app.View_main
import struct Anime_app.View_main_Previews

