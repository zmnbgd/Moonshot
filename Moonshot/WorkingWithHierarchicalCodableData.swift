//
//  WorkingWithHierarchicalCodableData.swift
//  Moonshot
//
//  Created by Marko Zivanovic on 5.4.25..
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct WorkingWithHierarchicalCodableData: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
{
"name": "Darth Vader",
"address": {
"street": "666, Darth Vader Avenue"
"city": "Death Star"
}
}
"""
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.city)
            }
            
            
        }
    }
}

#Preview {
    WorkingWithHierarchicalCodableData()
}
