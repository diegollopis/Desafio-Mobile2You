//
//  MovieDetailsModel.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.

import UIKit

struct MovieDetailsModel {
    
    let moviePoster: String
    let movieTitle: String
    let likes: Double
    let views: Double
    
    func getPoster() -> UIImage {
        
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
    
    func getMovieTitle() -> String {
        self.movieTitle
    }
    
    func getLikes() -> Double {
        self.likes / 1000
    }
    
    func getViews() -> Double {
        self.views
    }
}
