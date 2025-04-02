//
//  HowScrollViewLetsUsWorkWithScrollingData.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 2.4.25..
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating a new Customtext")
        self.text = text
    }
}

struct HowScrollViewLetsUsWorkWithScrollingData: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HowScrollViewLetsUsWorkWithScrollingData()
}
