//
//  ContentView.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 31.3.25..
//

import SwiftUI

struct ContentView: View {
    
    let astronauts = Bundle.main.decode("astronauts.json")
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
