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
        
        ZStack {
            
            ShadowView()
            
            VStack (alignment: .leading, spacing: 15) {
                
                HStack {
                    TitleView(name: movieViewModel.movieInfo.getMovieTitle())
                    
                    Spacer()
                    
                    HeartButtonView()
                }
                    
                HStack {
                    LikesView(likes: movieViewModel.movieInfo.getLikes())
                    
                    WatchedView(watched: movieViewModel.movieInfo.getFormattedViews())
                }
            }
            .font(.body)
        }
    }
}
