//
//  MoviePosterView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct MoviePosterView: View {
    
    var body: some View {
        
        Image("johnny_2")
            .resizable()
            .scaledToFill()
    }
}

struct MoviePosterView_Previews: PreviewProvider {
    
    static var previews: some View {
        let height: CGFloat = UIScreen.main.bounds.size.height
        let width: CGFloat = UIScreen.main.bounds.size.width
        
        ZStack {
            Color.black
            VStack {
                MoviePosterView()
                    .frame(width: width, height: height * 0.5)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}