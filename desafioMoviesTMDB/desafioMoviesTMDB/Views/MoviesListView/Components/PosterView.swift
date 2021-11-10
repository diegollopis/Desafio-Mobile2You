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
            .scaledToFill()
            .frame(width: 80, height: 100, alignment: .topLeading)
            .clipped()
    }
}

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView(name: "edward")
    }
}
