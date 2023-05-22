//
//  FlightData.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 02/01/23.
//

import Foundation

struct FlightData: Identifiable,Codable {
    let origin: String
    let id: String
    let destination: String
    let flightDuration: String
    let carriers: String
    let price: String
    let currency: String
}

