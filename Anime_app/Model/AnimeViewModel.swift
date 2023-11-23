//
//  AnimeViewModel.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/13/23.
//

import Foundation

class AnimeModel: ObservableObject {

    struct Returned: Codable {
        var data: [AnimeData]
    }
    
    struct AnimeData: Codable, Hashable {
        var attributes: AnimeAtt
    }
    
    struct AnimeAtt: Codable, Hashable {
        var slug: String
        var averageRating: String
        var synopsis: String
        var posterImage: AnimeImg
    }
    
    struct AnimeImg: Codable, Hashable{
        var original: String
    }


    @Published var urlString = "https://kitsu.io/api/edge/trending/anime"
    @Published var dataArray: [AnimeData] = []
    
    func getData() async {
        print("🕸️ Accessing url \(urlString)")
        // convert usrlString to a special URL type
        guard let url = URL(string: urlString) else {
            print("😡 Could not create url from \(urlString)")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
//            print("Response Status Code: \((response as? HTTPURLResponse)?.statusCode ?? -1)")
//            print("Response Data: \(String(data: data, encoding: .utf8) ?? "No data")")
            // decode JSON into our own data structure
            guard let returned = try? JSONDecoder().decode(Returned.self, from: data) else {
                print("😡 JSON ERROR: could not decode data")
                return
            }
            self.dataArray = returned.data
            
            for anime in returned.data {
                let slug = anime.attributes.slug
                let avg = anime.attributes.averageRating
                let img = anime.attributes.posterImage.original
                print("😎 slug: \(slug) avg rating: \(avg) Img: \(img) ")
            }
        } catch {
            print("😡 Could not get data from \(urlString) Error: \(error)")
        }
    }
}
