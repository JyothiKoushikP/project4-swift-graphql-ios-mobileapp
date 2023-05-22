//
//  FlightDetailsView.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 09/01/23.
//

import SwiftUI

struct FlightDetailsView: View {
    
    var flightID: String;
    var source: String;
    var destination: String;
    var price: String;
    var carriers: String;
    var currency: String;
    var totalDuration: String;
    
    
    var color1 = Color("demo1")
    var color2 = Color("DetailListViewColour1")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [color1,color2]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 375,height: 600)
            VStack(spacing: 70){
                Text(flightID)
                HStack(spacing: 180){
                    Text(source)
                    Text(destination)
                }
                Text(price)
                Text(carriers)
                Text(currency)
                Text(totalDuration)
            }
        }
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(flightID: "1", source: "DXB", destination: "NYC", price: "50$", carriers: "DellMount", currency: "$", totalDuration: "176")
    }
}
