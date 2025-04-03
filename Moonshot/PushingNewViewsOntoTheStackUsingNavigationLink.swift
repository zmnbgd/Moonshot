//
//  PushingNewViewsOntoTheStackUsingNavigationLink.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 3.4.25..
//

import SwiftUI

struct PushingNewViewsOntoTheStackUsingNavigationLink: View {
    var body: some View {
        NavigationStack {
            
////            NavigationLink("tap me") {
//            NavigationLink {
//                Text("Detail view")
//            } label: {
//                VStack {
//                    Text("This is the label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
            
            List(1..<101) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    PushingNewViewsOntoTheStackUsingNavigationLink()
}
