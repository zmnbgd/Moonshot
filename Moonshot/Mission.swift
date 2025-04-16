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

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String?
    
    var displayName: String {
        "Apolo \(id)"
    }
    
    var image: String {
        "apolo \(id)"
    }
    
}
