//
//  FlightDataListView.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 03/01/23.
//

import SwiftUI

struct FlightDataListView: View {
    @ObservedObject var flightViewModel = FlightDataViewModel()
    @State var searchQuery = ""
    @State var isSearching = false
    @State var showSearchResults = false
    @State var loadSearchResults = false
    
    var body: some View {
        
        SearchBarView(searchQuery: $searchQuery, isSearching: $isSearching, showResults: $showSearchResults, loadSearchResults: $loadSearchResults)
        
        ScrollView {
            LazyVStack(alignment: .center) {
                ForEach(flightViewModel.flightDataList.filter({ "\($0.origin)".contains(searchQuery) || searchQuery.isEmpty
                })) { selectedFlight in
                    FlightDataCardView(flightID: selectedFlight.id, startingPoint: selectedFlight.origin, destinationPoint: selectedFlight.destination).onTapGesture {
                        NavigationStack {
                            FlightDetailsView(flightID: selectedFlight.id, source: selectedFlight.origin, destination: selectedFlight.destination, price: selectedFlight.price, carriers: selectedFlight.carriers, currency: selectedFlight.currency, totalDuration: selectedFlight.flightDuration)
                        }
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()){
                    loadSearchResults = true
                }
            }
        }
    }
}

struct SearchBarView: View {
    @Binding var searchQuery: String
    @Binding var isSearching: Bool
    @Binding var showResults: Bool
    @Binding var loadSearchResults: Bool
    
    var body: some View {
        HStack {
            TextField("Search by Departure Airport", text: $searchQuery)
                .padding(.horizontal,40)
        }.frame(width:340, height:4)
            .padding()
            .background(Color(.systemCyan))
            .clipShape(RoundedRectangle(cornerRadius: 12,style: .continuous))
            .onTapGesture {
                isSearching = true
                showResults = true
            }.overlay {
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    Button {
                        searchQuery = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .padding()
                            .foregroundColor(Color.gray)
                            .opacity(isSearching ? 1: 0)
                    }
                }.padding(.horizontal,30)
            }.animation(loadSearchResults ? .spring() : .none)
        
    }
}

struct FlightDataListView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDataListView()
    }
}
