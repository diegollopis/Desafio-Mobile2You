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
    
    init() {
        makeNavBarTransparent()
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.black
                
                ScrollView (.vertical, showsIndicators: true) {
                    
                    VStack (spacing: 20){
                        
                        MoviePosterView()
                            .frame(width: width, height: height * 0.4)
                            .frame(maxHeight: height * 0.4)
                        
                        VStack {
                            AboutTheMovieView()
                                .padding(.bottom, 20)
                            
                            MoviesListView()
                            
                            VStack {
                                LikeButtonView()
                                    .padding(.bottom, 10)
                                
                                AddListButtonView()
                            }
                            .padding(.top, 40)
                            
                            FootnoteView()
                                .padding(.top, 20)
                        }
                        .padding(.horizontal, 10)
                    }
                }
                .foregroundColor(.white)
            }
            .ignoresSafeArea()
            .navigationBarItems(leading: BackButtonView())
        }
        .onAppear(perform: movieViewModel.fetchMovieData)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
