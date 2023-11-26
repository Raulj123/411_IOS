@_private(sourceFile: "AnimeDetailView.swift") import Anime_app
import SwiftUI
import SwiftUI

extension ViewA_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/AnimeDetailView.swift", line: 98)
        
        View_main()
    
#sourceLocation()
    }
}

extension AnimeDetailView {
    @_dynamicReplacement(for: truncateSynopsis(_:)) private func __preview__truncateSynopsis(_ synopsis: String) -> String {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/AnimeDetailView.swift", line: 91)
        let maxLength = __designTimeInteger("#5583.[1].[3].[0].value", fallback: 200) // Adjust the desired maximum length
        return String(synopsis.prefix(maxLength)) + __designTimeString("#5583.[1].[3].[1].[0]", fallback: "...")
    
#sourceLocation()
    }
}

extension AnimeDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rauljarquin/Desktop/411_IOS/Anime_app/Views/AnimeDetailView.swift", line: 15)
        NavigationView {
            ZStack {
                // Anime Image from top to the middle of the screen
                AsyncImage(url: URL(string: anime.attributes.posterImage.original)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minHeight: __designTimeInteger("#5583.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0), maxHeight: .infinity)
                        .clipped()
                } placeholder: {
                    // Placeholder or loading indicator
                    ProgressView()
                }

                // Slidable Card
                GeometryReader { geometry in
                    VStack {
                        Spacer() // Spacer to push the content to the bottom

                        // Card with anime details
                        VStack {
                            Text(anime.attributes.slug)
                                .font(.title)
                                .padding()

                            Divider()

                            Text("Rating: \(anime.attributes.averageRating)")
                                .font(.headline)
                                .padding()

                            Divider()

                            // Display a truncated version of the synopsis initially
                            Text("Synopsis: \(isSynopsisExpanded ? anime.attributes.synopsis : truncateSynopsis(anime.attributes.synopsis))")
                                .padding()
                                .multilineTextAlignment(.center)
                                .onTapGesture {
                                    withAnimation {
                                        // Toggle the state to expand or collapse the synopsis
                                        isSynopsisExpanded.toggle()
                                    }
                                }

                            // Display the relationship detail from attributes
                            Text("Related: \(anime.relationships.streamingLinks.links.related)")
                                .padding()
                                .multilineTextAlignment(.center)

                        }
                        .frame(width: geometry.size.width, alignment: .top)
                        .background(Color.white)
                        .cornerRadius(__designTimeInteger("#5583.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value", fallback: 20))
                        .padding(.top, __designTimeInteger("#5583.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[1].value", fallback: -100)) // Negative top padding to overlay on the image
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(__designTimeBoolean("#5583.[1].[2].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: true)) // Hide navigation bar for a full-screen effect
            .navigationBarBackButtonHidden(__designTimeBoolean("#5583.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: true)) // Hide the default back button

            // Custom back button
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Handle back button action, e.g., navigate back to anime list
                    }) {
                        Image(systemName: __designTimeString("#5583.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "arrow.left.circle.fill"))
                            .font(.title)
                    }
                }
            }
        }
    
#sourceLocation()
    }
}

import struct Anime_app.AnimeDetailView
import struct Anime_app.ViewA_Previews

