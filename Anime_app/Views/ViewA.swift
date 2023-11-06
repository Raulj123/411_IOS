//
//  ViewA.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/5/23.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "slider.horizontal.3")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
