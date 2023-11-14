//
//  View_main.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/4/23.
//

import SwiftUI

struct View_main: View {
    @StateObject var animeVM = AnimeModel()
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "house.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
                .task {
                    await animeVM.getData()
                }
            
        }
    }
}

struct View_main_Previews: PreviewProvider {
    static var previews: some View {
        View_main()
    }
}
