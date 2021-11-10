//
//  MovieViewModel.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 10/11/21.
//

import Foundation

class MovieViewModel: ObservableObject {
    
    @Published var movieInfo: MovieDetailsModel?
    
    init () {
        movieInfo = MovieDetailsModel(moviePoster: "", movieTitle: "", likes: 1, views: 0.0)
    }
        
    func fetchMovieData() {
        
        let url = "https://api.themoviedb.org/3/movie/438631?api_key=e5eb01e1a7cf82d8d5d574e34f2e58ff&language=pt-BR"
        
        if let urlString = URL(string: url) {
            
            let task = URLSession(configuration: .default).dataTask(with: urlString) { data, response, error in
                if error != nil {
                    return
                }
                
                if let safeData = data {
                    do {
                        let r = try JSONDecoder().decode(APIMovieDetails.self, from: safeData)
                        
                        DispatchQueue.main.async {
                            
                            self.movieInfo = MovieDetailsModel(moviePoster: r.poster_path, movieTitle: r.title, likes: r.vote_count, views: r.popularity)
                            print("sucesso!")
                            
                            return
                        }
                    } catch {
                        print("deu ruim!!!")
                    }
                }
            }
            task.resume()
        }
    }
}

