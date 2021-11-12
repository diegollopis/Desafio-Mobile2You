//
//  ContentView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var movieViewModel: MovieViewModel
    
    let width = getScreenWidth()
    let height = getScreenHeight()
    
    init () {
        makeNavBarTransparent()
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.black
                
                ScrollView (.vertical, showsIndicators: true) {
                    
                    VStack (spacing: 20){
                        
                        ProgressViewScreen()
                            .progressViewStyle(CircularProgressViewStyle())
                        
                        MoviePosterView()
                            .frame(width: width, height: height * 0.4)
                            .frame(maxHeight: height * 0.4)
                        
                        VStack {
                            AboutTheMovieView()
                                .padding(.bottom, 20)
                            
                            MoviesListView()
                            
                            FootnoteView()
                                .padding(.top, 20)
                        }
                        .padding(.horizontal, 15)
                    }
                }
                .foregroundColor(.white)
                
                if movieViewModel.isShowingProgressView {
                    ProgressViewScreen()
                }
            }
            .ignoresSafeArea()
            .navigationBarItems(leading: BackButtonView().opacity(movieViewModel.isShowingProgressView ? 0 : 1))
        }
        .onAppear(perform: movieViewModel.fetchMovieData)
        .onAppear(perform: movieViewModel.fetchMoviesList)
    }
}

func makeNavBarTransparent() {
    UINavigationBar.appearance().barTintColor = .clear
    UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
}

func getScreenWidth() -> CGFloat {
    UIScreen.main.bounds.size.width
}

func getScreenHeight() -> CGFloat {
    UIScreen.main.bounds.size.height
}
