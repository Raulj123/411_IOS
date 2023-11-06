@_private(sourceFile: "ViewB.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ViewB_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/ViewB.swift", line: 23)
        ViewB()
    
#sourceLocation()
    }
}

extension ViewB {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/ViewB.swift", line: 12)
        ZStack {
            Color.blue
            Image(systemName: __designTimeString("#9491.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "magnifyingglass.circle.fill"))
                .foregroundColor(Color.white)
                .font(.system(size: __designTimeFloat("#9491.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 100.0)))
        }
    
#sourceLocation()
    }
}

import struct Anime_app.ViewB
import struct Anime_app.ViewB_Previews

