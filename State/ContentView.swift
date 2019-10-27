//
//  ContentView.swift
//  State
//
//  Created by Ilyasa Azmi on 25/10/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //State variable
    @State var pokemonName = "Charman"
    
    var body: some View {
        VStack{
            Text(pokemonName)
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: 50
                )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            
            Button(
                //for action
                action: { self.switchPokemon()},
                //label text view
                label: {Text("Switch")}
            )
        }
    }
    
    func switchPokemon() {
        let list = ["Squirtle", "Bulbasaur", "Charmender", "Pikachu"]
        pokemonName = list.randomElement() ?? ""
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
