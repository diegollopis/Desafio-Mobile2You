//
//  LikesView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct LikesView: View {
    
    let likes: Int
    
    var body: some View {
        
        HStack {
            Image(systemName: "heart.fill")
            
            Text("\(likes)")
                .padding(.trailing, 20)
        }
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView(likes: 3)
    }
}
