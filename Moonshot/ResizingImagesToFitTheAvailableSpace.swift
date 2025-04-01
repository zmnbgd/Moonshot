//
//  ResizingImagesToFitTheAvailableSpace.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 1.4.25..
//

import SwiftUI

struct ResizingImagesToFitTheAvailableSpace: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            //.scaledToFill()
            .frame(width: 300, height: 300)
            //.clipped()
            .containerRelativeFrame(.horizontal) { size, Axis in
                size * 0.8
            }
    }
}

#Preview {
    ResizingImagesToFitTheAvailableSpace()
}
