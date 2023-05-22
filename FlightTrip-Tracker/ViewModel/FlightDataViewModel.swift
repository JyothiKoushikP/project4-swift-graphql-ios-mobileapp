//
//  FlightDataViewModel.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 02/01/23.
//

import Foundation

class FlightDataViewModel : ObservableObject {
    private var flightDataFromServer : [GetAllFlightsQuery.Data.FlightQuery?] = []
    @Published var flightDataList = [FlightData]()
    
    
    init(){
        fetchFlightDataList()
    }
    
    func fetchFlightDataList() {
        Network.shared.apolloClient.fetch(query: GetAllFlightsQuery()){ result in
            switch result {
            case .success(let graphQLResult):
                print("GraphQL Server -> Success in fetching Flight Info............")
                if let demo = graphQLResult.data?.flightQuery{
                    self.flightDataFromServer = demo
                    self.flightDataFromServer.forEach { flightInfo in
                        if let validInfo = flightInfo{
                            let newFlightItem = FlightData(origin: validInfo.origin,id: validInfo.flightId, destination: validInfo.destination, flightDuration: validInfo.durationInMinutes, carriers: validInfo.carriers, price: validInfo.price, currency: validInfo.currency)
                            self.flightDataList.insert(newFlightItem, at: 0)
                        }
                    }
                }
            case .failure(let error):
                print("GraphQL Server -> Failed fetching Flight Info \(error)")
            }
        }
    }
    
}
