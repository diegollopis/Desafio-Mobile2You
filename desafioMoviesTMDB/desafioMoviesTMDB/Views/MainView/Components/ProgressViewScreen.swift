//
//  ProgressViewScreen.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 11/11/21.
//

import SwiftUI

struct ProgressViewScreen: View {
    
    var body: some View {
        
        ZStack {
            Color.black
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .red))
                .scaleEffect(2)
        }
    }
}
