//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Américo MQ on 25/11/22.
//

import SwiftUI
import Kingfisher

struct PokemonDetailView: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    let backGroundColor: Color
    private var offset = UIScreen.main.bounds.height * 0.3
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backGroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        let color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        VStack {
            
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .offset(y: 50)
                .zIndex(1)
            
            ZStack() {
                
                Color(color)
                VStack {
                    
                    Text(pokemon.name)
                        .font(.largeTitle).bold()
                    
                    Capsule()
                        .fill(backGroundColor)
                        .overlay {
                            Text(pokemon.type)
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 50)
                    
                    Text(pokemon.description)
                        .lineLimit(4)
                        .padding([.horizontal, .bottom], 10)
                    
                    
                    
                    VStack() {
                        Text("Stats")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        StatsView(propertyIntValue: pokemon.height, property: "Height", propertyWidth: CGFloat(pokemon.height), statsBackGroundColor: Color.orange)
                        StatsView(propertyIntValue: pokemon.attack, property: "Attack", propertyWidth: CGFloat(pokemon.attack), statsBackGroundColor: Color.red)
                        StatsView(propertyIntValue: pokemon.defense, property: "Defense", propertyWidth: CGFloat(pokemon.defense), statsBackGroundColor: Color.blue)
                        StatsView(propertyIntValue: pokemon.weight, property: "Weight", propertyWidth: CGFloat(pokemon.weight), statsBackGroundColor: Color.purple)

                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.trailing, 20)
                }
                
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .background(backGroundColor)
            .edgesIgnoringSafeArea(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backGroundColor)
    }
    
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: MOCK_POKEMON[2], viewModel: PokemonViewModel())
    }
}
