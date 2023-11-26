//
//  ViewA.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/5/23.
//

import SwiftUI

struct AnimeDetailView: View {
    let anime: AnimeModel.AnimeData
    @State private var isSynopsisExpanded = false

    var body: some View {
        NavigationView {
            ZStack {
                // Anime Image from top to the middle of the screen
                AsyncImage(url: URL(string: anime.attributes.posterImage.original)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minHeight: 0, maxHeight: .infinity)
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
                        .cornerRadius(20)
                        .padding(.top, -100) // Negative top padding to overlay on the image
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true) // Hide navigation bar for a full-screen effect
            .navigationBarBackButtonHidden(true) // Hide the default back button

            // Custom back button
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Handle back button action, e.g., navigate back to anime list
                    }) {
                        Image(systemName: "arrow.left.circle.fill")
                            .font(.title)
                    }
                }
            }
        }
    }

    // Truncate the synopsis to a specific length
    private func truncateSynopsis(_ synopsis: String) -> String {
        let maxLength = 200 // Adjust the desired maximum length
        return String(synopsis.prefix(maxLength)) + "..."
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        
        View_main()
    }
}
