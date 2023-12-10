//
//  Winter2023.swift
//  Anime_app
//
//  Created by Gerrit VanderStoel on 12/9/23.
//

import SwiftUI

struct Winter2023: View {
    var animes: [Anime] = AnimeLists.Winter2023
    
    var body: some View {
        NavigationView {
            List(animes, id: \.title) { item in
                NavigationLink(destination: AnimeDetail(item: item, animeList: animes)) {
                    HStack {
                        Image(item.pic)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(item.title)
                                .fontWeight(.bold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            Text(item.genre)
                            
                            Text("Rating: \(item.rating) /10")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Winter Anime 2023")
        }
    }
}

struct Winter2023_Previews: PreviewProvider {
    static var previews: some View {
        Winter2023()
    }
}
