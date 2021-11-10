//
//  TitleView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MovieTitleView: View {
    
    let title: String
    
    var body: some View {
        
        Text(title)
            .bold()
    }
}

struct MovieTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTitleView(title: "Edward Scissorhands")
    }
}
