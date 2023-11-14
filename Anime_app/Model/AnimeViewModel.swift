//
//  AnimeViewModel.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/13/23.
//

import Foundation

class AnimeModel: ObservableObject {

    private struct Returned: Codable {
        var count: Int
        var next: String
    }

    var urlString = "https://pokeapi.co/api/v2/pokemon/"

    func getData() async {
        print("🕸️ Accessing url \(urlString)")
        // convert usrlString to a special URL type
        guard let url = URL(string: urlString) else {
            print("😡 Could not create url from \(urlString)")
            return
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print("Response Status Code: \((response as? HTTPURLResponse)?.statusCode ?? -1)")
            print("Response Data: \(String(data: data, encoding: .utf8) ?? "No data")")
            // decode JSON into our own data structure
            guard let returned = try? JSONDecoder().decode(Returned.self, from: data) else {
                print("😡 JSON ERROR: could not decode data")
                return
            }
            print("😎 JSON returned, count: \(returned.count), next: \(returned.next)")
        } catch {
            print("😡 COuld not get data from \(urlString) Error: \(error)")
        }
    }
}
