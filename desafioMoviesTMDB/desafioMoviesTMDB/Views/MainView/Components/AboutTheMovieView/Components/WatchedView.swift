//
//  WatchedView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct WatchedView: View {
    
    let watched: Double
    
    var body: some View {
        
        HStack {
            Image(systemName: "circle.bottomhalf.filled")
        
            Text("\(watched, specifier: "%.1f")M views")
        }
    }
}
