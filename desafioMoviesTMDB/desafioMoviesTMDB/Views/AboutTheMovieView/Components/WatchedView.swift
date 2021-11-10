//
//  WatchedView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import SwiftUI

struct WatchedView: View {
    
    var body: some View {
        
        HStack {
            Image(systemName: "circle.bottomhalf.filled")
        
            Text("3.5M views")
        }
    }
}

struct WatchedView_Previews: PreviewProvider {
    static var previews: some View {
        WatchedView()
    }
}
