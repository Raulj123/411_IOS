//
//  ViewB.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/5/23.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "magnifyingglass.circle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
