//
//  TitleView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct MovieTitle: View {
    
    let title: String
    
    var body: some View {
        
        Text(title)
            .bold()
    }
}
