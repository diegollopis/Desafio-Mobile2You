//
//  MoviesListView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MoviesList: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
                
    var body: some View {
        
        VStack {
            
            ForEach(movieViewModel.movieList) { movie in
                
                HStack {
                    MoviePoster(image: movie.getPoster())
                    
                    VStack (alignment: .leading, spacing: 10) {
                        
                        MovieTitle(title: movie.movieTitle)
                        
                        ReleaseYearAndGenre(text: String(movie.releaseDate.prefix(4)))
                        
                        Divider()
                            .offset(y: 25)
                    }
                    
                    Image(systemName: "checkmark.circle.fill")
                        .padding(.bottom, 70)
                }
            }
            
            VStack {
                LikeButtonView()
                    .padding(.bottom, 10)
                
                AddListButtonView()
            }
            .padding(.top, 40)
        }
    }
}
