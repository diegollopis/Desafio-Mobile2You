//
//  ReleaseYearAndGenreView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct ReleaseYearAndGenreView: View {
    
    let text: String
    
    var body: some View {
        
        Text(text)
            .font(.subheadline)    }
}

struct ReleaseYearAndGenreView_Previews: PreviewProvider {
    static var previews: some View {
        ReleaseYearAndGenreView(text: "1994, Drama")
    }
}
