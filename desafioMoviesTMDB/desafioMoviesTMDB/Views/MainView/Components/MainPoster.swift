//
//  MoviePosterView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct MainPoster: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
    
    var body: some View {
        
        Image(uiImage: movieViewModel.movie?.getPoster() ?? UIImage())
            .resizable()
            .scaledToFill()
    }
}
