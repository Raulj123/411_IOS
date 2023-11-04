//
//  ContentView.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView  {
            View_main()
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
