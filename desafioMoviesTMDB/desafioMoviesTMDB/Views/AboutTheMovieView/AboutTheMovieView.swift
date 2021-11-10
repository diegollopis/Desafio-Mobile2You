//
//  AboutTheMovieView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct AboutTheMovieView: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
        
    var body: some View {
        
        VStack (alignment: .leading, spacing: 15) {
            
            HStack {
                TitleView(name: movieViewModel.movieInfo?.movieTitle ?? "Peido")
                
                Spacer()
                
                HeartButtonView()
            }
                
            HStack {
                LikesView(likes: movieViewModel.movieInfo?.likes ?? 0)
                
                WatchedView(watched: movieViewModel.movieInfo?.views ?? 0.0)
            }
        }
        .font(.body)
    }
}

//struct MovieListInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//
//        ZStack {
//            Color.black
//            AboutTheMovieView()
//        }
//        .foregroundColor(.white)
//    }
//}

