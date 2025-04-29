//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 29.4.25..
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2.0)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
