//
//  MoviesListView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MoviesListView: View {
    
    var body: some View {
        
        VStack {
            
            ForEach(1..<11) { _ in
                
                HStack {
                    PosterView(name: "edward")
                    
                    VStack (alignment: .leading, spacing: 10) {
                        
                        MovieTitleView(title: "Edward Scissorhands")
                        
                        ReleaseYearAndGenreView(text: "1994, Drama")
                        
                        Divider()
                            .offset(y: 25)
                    }
                    
                    Spacer()
                    
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
