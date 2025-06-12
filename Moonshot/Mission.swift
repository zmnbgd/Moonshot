//
//  Mission.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 10.4.25..
//

import Foundation

//struct CrewRole: Codable {
//    let name: String
//    let role: String
//}

// MARK: - Project 9. - Challenge 3. Return to project 8 (Moonshot), and upgrade it to use NavigationLink(value:). This means adding Hashable conformance, and thinking carefully how to use navigationDestination()
struct Mission: Codable, Identifiable, Hashable {
    
    struct CrewRole: Codable, Hashable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String?
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
}
