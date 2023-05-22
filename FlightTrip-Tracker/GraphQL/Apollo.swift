//
//  Apollo.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 27/12/22.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private init() {  }
    
    lazy var apolloClient = ApolloClient(url: getgraphQLURL()!)
    
    private func getgraphQLURL() -> URL? {
        return URL(string:"http://localhost:4000")
    }
    
}


