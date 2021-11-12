//
//  BackButtonView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct BackButtonView: View {
    
    var body: some View {
        
        Button {
            print("back")
        } label: {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .overlay(Image(
                        systemName: "chevron.backward.circle.fill")
                                        .resizable()
                                        .foregroundColor(.black))}
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.gray
            BackButtonView()
        }
    }
}
