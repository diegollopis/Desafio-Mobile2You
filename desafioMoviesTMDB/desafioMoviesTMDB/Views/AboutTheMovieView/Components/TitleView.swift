//
//  TitleView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct TitleView: View {
    
    var body: some View {
        
        Text("Johnny Depp")
            .font(.largeTitle)
            .bold()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
