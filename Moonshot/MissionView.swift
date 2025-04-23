//
//  MissionView.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 23.4.25..
//

import SwiftUI

struct MissionView: View {
    
    let mission: Mission
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                VStack(alignment: .leading) {
                    Text("Mission HIghlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description!)
                    
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

#Preview {
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
   return MissionView(mission: missions[0])
        .preferredColorScheme(.dark)
}
