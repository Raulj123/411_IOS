//
//  View_main.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/4/23.
//

import SwiftUI

struct View_main: View {
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "house.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
         
            
        }
    }
}

struct View_main_Previews: PreviewProvider {
    static var previews: some View {
        View_main()
    }
}
