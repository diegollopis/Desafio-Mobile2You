//
//  FootnoteView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct FootnoteView: View {
    
    var body: some View {
        
        Text("Lista enviada por @TodoMoviesApp")
            .font(.subheadline)
    }
}

struct FootnoteView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            FootnoteView()
        }
        .foregroundColor(.white)
    }
}
