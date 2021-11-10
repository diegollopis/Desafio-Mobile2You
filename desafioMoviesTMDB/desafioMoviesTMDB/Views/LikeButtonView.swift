//
//  LikeButtonView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct LikeButtonView: View {
    
    @State private var like: Bool = false
        
    var body: some View {
    
        Button {
            self.like.toggle()
        } label: {
            HStack {
                like ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                Text(like ? "Curtido" : "Curtir")
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
        }
        .foregroundColor(like ? .black : .white)
        .background(like ? Color.white.opacity(1) : Color.white.opacity(0))
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 2))
        .cornerRadius(8)
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
            LikeButtonView()
        }
       
    }
}

