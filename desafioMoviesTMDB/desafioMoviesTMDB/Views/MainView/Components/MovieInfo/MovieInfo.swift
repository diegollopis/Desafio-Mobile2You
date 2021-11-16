//
//  AboutTheMovieView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct MovieInfo: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
        
    var body: some View {
        
        ZStack {
            
            ShadowEffect()
            
            VStack (alignment: .leading, spacing: 15) {
                
                HStack {
                    MovieTitleView(name: movieViewModel.movie?.title ?? "Unknown")
                    
                    Spacer()
                    
                    HeartButton()
                }
                    
                HStack {
                    LikesValue(likes: movieViewModel.movie?.getLikes() ?? 0.0)
                    
                    WatchedValue(watched: movieViewModel.movie?.popularity ?? 0.0)
                }
            }
            .font(.body)
        }
    }
}
