//
//  PosterView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct PosterView: View {
    
    let name: String
    
    var body: some View {
        
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
}

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView(name: "edward")
    }
}
