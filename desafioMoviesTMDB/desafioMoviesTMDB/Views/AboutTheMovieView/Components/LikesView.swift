//
//  LikesView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct LikesView: View {
    
    var body: some View {
        
        HStack {
            Image(systemName: "heart.fill")
            
            Text("3.5K Likes")
                .padding(.trailing, 20)
        }
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView()
    }
}
