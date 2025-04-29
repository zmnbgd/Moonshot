//
//  CrewScrollView.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 28.4.25..
//

import SwiftUI

struct CrewScrollView: View {
    
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { CrewMember in
                    NavigationLink {
                        AstronautView(astronaut: CrewMember.astronaut)
                    } label: {
                        HStack {
                            Image(CrewMember.astronaut.id)
                                .resizable()
                                .frame(width: 125, height: 90)
                                .clipShape(.capsule)

                            VStack(alignment: .leading) {
                                Text(CrewMember.astronaut.name)
                                    .foregroundColor(.white.opacity(0.8))
                                    .font(.headline)
                                
                                Text(CrewMember.role)
                                    .foregroundColor(.white.opacity(0.8))
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let mission = missions[0]
    
    let crew = mission.crew.map { member in
        MissionView.CrewMember(role: member.role, astronaut: astronauts[member.name]!)
    }
    
    return CrewScrollView(crew: crew)
        .preferredColorScheme(.dark)
}
