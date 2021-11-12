//
//  AddListButtonView.swift
//  desafioMoviesTMDB
//
//  Created by Diego Llopis on 09/11/21.
//

import SwiftUI

struct AddListButtonView: View {
    
    @State private var add: Bool = false
    
    @Binding var showingCheckmark: Bool
        
    var body: some View {
    
        Button {
            self.add = true
            self.showingCheckmark = true
        } label: {
                Text(add ? "Adicionado às Minhas Listas" : "Adicionar às Minhas Listas")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
        }
        .foregroundColor(add ? .black : .white)
        .background(add ? Color.white.opacity(1) : Color.white.opacity(0))
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.white, lineWidth: 2))
        .cornerRadius(8)
    }
}
