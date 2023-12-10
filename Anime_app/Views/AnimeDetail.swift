import SwiftUI

struct AnimeDetail: View {
    var item: Anime
    var animeList: [Anime]
    
    var body: some View {
        VStack {
            Image(item.pic)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(12)
            
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
            
            VStack {
                Text(item.genre)
                
                Text("Stream Time / Date: " + item.streamTime)
                
                Text("Rating \(item.rating)/10")
                
                Text(item.synopsis)
                    .padding(25)
                    .fontWeight(.semibold)
                    .lineLimit(nil)
                    .minimumScaleFactor(0.5)
                
                Button(action: {
                    if let url = URL(string: item.streamlink) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Stream")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct AnimeDetail_Previews: PreviewProvider {
    static var previews: some View {
        AnimeDetail(item: AnimeLists.Winter2023.first!, animeList: AnimeLists.Winter2023)
    }
}

