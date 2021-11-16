//
//  APIMovieDetails.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation
import UIKit

struct Movie: Decodable {
    
    let posterPath: String
    let title: String
    let voteCount: Double
    let popularity: Double
    
    func getPoster() -> UIImage {
        
        let address = "https://image.tmdb.org/t/p/original/\(self.posterPath)"
        
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

    func getLikes() -> Double {
        self.voteCount / 1000
    }
}


