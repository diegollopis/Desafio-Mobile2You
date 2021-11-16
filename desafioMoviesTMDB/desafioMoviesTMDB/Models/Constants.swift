//
//  Constants.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 13/11/21.
//

import Foundation

struct Constants {
    
    static let apiKey: String = "e5eb01e1a7cf82d8d5d574e34f2e58ff"
    
    static let movieId: String = "24428"
    
    static let movieUrl: String = "https://api.themoviedb.org/3/movie/\(movieId)?api_key=\(apiKey)&language=en-US"
    
    static let movieListUrl: String =  "https://api.themoviedb.org/3/movie/24428/similar?api_key=\(apiKey)&language=en-US&page=1"
}
