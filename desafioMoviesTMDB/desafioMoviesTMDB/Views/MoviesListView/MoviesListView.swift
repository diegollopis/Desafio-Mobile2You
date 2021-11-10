//
//  MoviesListView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MoviesListView: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
    
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
                }
            }
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
