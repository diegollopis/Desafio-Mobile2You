//
//  MovieListModel.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation

import UIKit

struct MovieListItemModel: Identifiable {
    
    var id = UUID()
    
    let movieTitle: String
    let releaseDate: String
    let moviePoster: String
    let genreIds: [Int]
    
    func getImage() -> UIImage {
        
        let address = "https://image.tmdb.org/t/p/original/\(self.moviePoster)"
        
        do {
            guard let url = URL(string: address) else {
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            
        }
        return UIImage()
    }
}
