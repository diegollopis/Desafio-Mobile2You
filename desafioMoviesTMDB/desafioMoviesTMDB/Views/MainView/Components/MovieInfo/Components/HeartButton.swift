//
//  HeartButtonView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct HeartButton: View {
    
    @State private var isLiked: Bool = false
    
    var body: some View {
        
        Button {
            self.isLiked.toggle()
        } label: {
            (self.isLiked ? Image(systemName: "heart.fill") : Image(systemName: "heart"))
                .resizable()
                .foregroundColor(.white)
                .scaledToFit()
                .frame(width: 25, height: 25)
        }
    }
}
