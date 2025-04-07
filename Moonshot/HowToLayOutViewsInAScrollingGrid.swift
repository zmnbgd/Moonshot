//
//  HowToLayOutViewsInAScrollingGrid.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 7.4.25..
//

import SwiftUI

struct HowToLayOutViewsInAScrollingGrid: View {
    
    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Text \($0)")
                }
            }
        }
    }
}

#Preview {
    HowToLayOutViewsInAScrollingGrid()
}
