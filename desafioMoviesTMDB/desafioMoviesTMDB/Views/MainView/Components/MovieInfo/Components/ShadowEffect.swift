//
//  ShadowView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct ShadowEffect: View {
    
    var body: some View {
        
        LinearGradient(colors: [.black.opacity(1.0), .black.opacity(0.1)], startPoint: .bottom, endPoint: .top)
            .padding(-30)
            .shadow(color: .black.opacity(1), radius: 3, x: 0, y: -5)
    }
}
