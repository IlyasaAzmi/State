//
//  GreetView.swift
//  State
//
//  Created by Ilyasa Azmi on 25/10/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import SwiftUI

struct GreetView: View {
    @State private var showGreeting = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting){
                Text("Show welcome")
            }.padding()
            
            if showGreeting {
                Text("Halo")
            }
        }
    }
}

struct GreetView_Previews: PreviewProvider {
    static var previews: some View {
        GreetView()
    }
}
