//
//  MoviesListView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MoviesListView: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
    
    @State private var showingCheckmark: Bool = false
            
    var body: some View {
        
        VStack {
            
            ForEach(movieViewModel.movieList) { movie in
                
                HStack {
                    PosterView(image: movie.getPoster())
                    
                    VStack (alignment: .leading, spacing: 10) {
                        
                        MovieTitleView(title: movie.getMovieTitle())
                        
                        ReleaseYearAndGenreView(text: movie.getReleaseDate())
                        
                        Divider()
                            .offset(y: 25)
                    }
                    
                    Image(systemName: "checkmark.circle.fill")
                        .padding(.bottom, 70)
                        .opacity(showingCheckmark ? 1 : 0)
                }
            }
            
            VStack {
                LikeButtonView()
                    .padding(.bottom, 10)
                
                AddListButtonView(showingCheckmark: $showingCheckmark)
            }
            .padding(.top, 40)
        }
    }
}
