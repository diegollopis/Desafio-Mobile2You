//
//  desafioMoviesTMDBApp.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

@main

struct desafioMoviesTMDBApp: App {
    
    @StateObject var movieViewModel: MovieViewModel = MovieViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(movieViewModel)
        }
    }
}
