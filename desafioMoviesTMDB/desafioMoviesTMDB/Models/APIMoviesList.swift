//
//  APIMoviesList.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation

struct APIMoviesList: Codable {
    
    let results: [Results]
}

struct Results: Codable {
    
    let title: String
    let releaseDate: String
    let posterPath: String
    let genreIds: [Int]
}


