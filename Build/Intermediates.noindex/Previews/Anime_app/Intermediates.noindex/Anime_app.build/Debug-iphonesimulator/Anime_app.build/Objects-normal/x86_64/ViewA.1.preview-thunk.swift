@_private(sourceFile: "ViewA.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ViewA_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/ViewA.swift", line: 23)
        ViewA()
    
#sourceLocation()
    }
}

extension ViewA {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/Anime_app/Anime_app/Views/ViewA.swift", line: 12)
        ZStack {
            Color.blue
            Image(systemName: __designTimeString("#9463.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "slider.horizontal.3"))
                .foregroundColor(Color.white)
                .font(.system(size: __designTimeFloat("#9463.[1].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 100.0)))
        }
    
#sourceLocation()
    }
}

import struct Anime_app.ViewA
import struct Anime_app.ViewA_Previews

