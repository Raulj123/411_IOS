//
//  ViewB.swift
//  Anime_app
//
//  Created by Raul Jarquin on 11/5/23.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                BackgroundView(firstColor: .blue, secondColor: .white)
                
                VStack {
                    Text("Top Five Anime of 2023")
                        .foregroundColor(.white)
                        .frame(width: 250 , height: 30)
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(100)
                    
                    NavigationLink(destination: Winter2023(), label: { ControllerButtons(title: "Winter Anime", textColor: .white, backgroundColor: .blue)})
                    
                    NavigationLink(destination: Spring2023(), label : {
                        ControllerButtons(title: "Spring Anime", textColor: .white, backgroundColor: .blue)})
                        
                    NavigationLink(destination: Summer2023(), label: {ControllerButtons(title: "Summer Anime", textColor: .white, backgroundColor: .blue)})
                    
                    NavigationLink(destination: Fall2023(), label: {ControllerButtons(title: "Fall Anime", textColor: .white, backgroundColor: .blue)})
                Spacer()
                }
                
                HStack() {
   
                }
            }
        }
    }
}

struct BackgroundView: View {
    
    var firstColor: Color
    
    var secondColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
