@_private(sourceFile: "SwiftUIView.swift") import Anime_app
import SwiftUI
import SwiftUI

extension SwiftUIView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/SwiftUIView.swift", line: 18)
        SwiftUIView()
    
#sourceLocation()
    }
}

extension SwiftUIView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/SwiftUIView.swift", line: 12)
        Text(/*@START_MENU_TOKEN@*/__designTimeString("#10090.[1].[0].property.[0].[0].arg[0].value", fallback: "Hello, World!")/*@END_MENU_TOKEN@*/)
    
#sourceLocation()
    }
}

import struct Anime_app.SwiftUIView
import struct Anime_app.SwiftUIView_Previews

