//
//  APIMovieDetails.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation

struct APIMovieDetails: Codable {
    
    let poster_path: String
    let title: String
    let vote_count: Int
    let popularity: Double
}
