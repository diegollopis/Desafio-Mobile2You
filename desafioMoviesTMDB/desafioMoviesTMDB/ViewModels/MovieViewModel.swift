//
//  MovieViewModel.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation
import UIKit

class MovieViewModel: ObservableObject {
    
    @Published var movie: Movie?
    
    @Published var movieList: [MovieListItem] = []
    
    @Published var isShowingProgressView: Bool = true
    
    func fetchAppData() {
        self.fetchMovie()
        self.fetchMoviesList()
    }
    
    func fetchMovie() {
        
        guard let url = URL(string: Constants.movieUrl) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            if error != nil {
                return
            }
            
            if let safeData = data {
                
                do {
                    let decoder = JSONDecoder()
                    
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    
                    let movie = try decoder.decode(Movie.self, from: safeData)
                    
                    DispatchQueue.main.async {
                        
                        self.movie = movie
                        
                        return
                    }
                } catch {
                    print("Filme não retornado!")
                }
            }
        }
        task.resume()
    }
    
    func fetchMoviesList() {
        
        guard let url = URL(string: Constants.movieListUrl) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            if error != nil {
                return
            }
            
            if let safeData = data {
                
                do {
                    let decoder = JSONDecoder()
                    
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    
                    let movie = try decoder.decode(APIMoviesList.self, from: safeData)
                    
                    DispatchQueue.main.async {
                        
                        for i in 1...10 {
                            
                            let listItem = MovieListItem(
                                movieTitle: movie.results[i].title,
                                releaseDate: movie.results[i].releaseDate,
                                moviePoster: movie.results[i].posterPath,
                                genreIds: movie.results[i].genreIds
                            )
                            self.movieList.append(listItem)
                        }
                        self.isShowingProgressView = false
                        return
                    }
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
}

