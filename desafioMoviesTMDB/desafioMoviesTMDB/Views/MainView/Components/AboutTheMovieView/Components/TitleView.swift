//
//  TitleView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct TitleView: View {
    
    let name: String
    
    var body: some View {
        
        Text(name)
            .font(.largeTitle)
            .bold()
    }
}
