//
//  AboutTheMovieView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct AboutTheMovieView: View {
        
    var body: some View {
        
        VStack (alignment: .leading, spacing: 15) {
            
            HStack {
                TitleView()
                
                Spacer()
                
                HeartButtonView()
            }
                
            HStack {
                LikesView()
                
                WatchedView()
            }
        }
        .font(.body)
    }
}

struct MovieListInfoView_Previews: PreviewProvider {
    static var previews: some View {

        ZStack {
            Color.black
            AboutTheMovieView()
        }
        .foregroundColor(.white)
    }
}

