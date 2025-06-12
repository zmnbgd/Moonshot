//
//  ContentView.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 31.3.25..
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
//                        NavigationLink {
//                            
//                            //Text("Detail view")
//                            MissionView(mission: mission, astronauts: astronauts)
//                        } label: {
//                            VStack {
//                                Image(mission.image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 100, height: 100)
//                                    .padding()
//                                
//                                VStack {
//                                    Text(mission.displayName)
//                                        .font(.headline)
//                                        .foregroundStyle(.white)
//                                    
//                                    Text(mission.formattedLaunchDate)
//                                        .font(.caption)
//                                        .foregroundStyle(.secondary)
//                                }
//                                .padding(.vertical)
//                                .frame(maxWidth: .infinity)
//                                .background(.lightBackground)
//                            }
//                            .clipShape(.rect(cornerRadius: 10))
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 10)
//                                    .stroke(.lightBackground)
//                            )
//                        }
                        
                        // MARK: - Project 9. - Challenge 3. Return to project 8 (Moonshot), and upgrade it to use NavigationLink(value:). This means adding Hashable conformance, and thinking carefully how to use navigationDestination()
                        NavigationLink(value: mission) {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        }
                        
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            // MARK: - Project 9. - Challenge 3. Return to project 8 (Moonshot), and upgrade it to use NavigationLink(value:). This means adding Hashable conformance, and thinking carefully how to use navigationDestination()
            .navigationDestination(for: Mission.self) { mission in
                MissionView(mission: mission, astronauts: astronauts)
            }
        }

    }
}

#Preview {
    ContentView()
}
