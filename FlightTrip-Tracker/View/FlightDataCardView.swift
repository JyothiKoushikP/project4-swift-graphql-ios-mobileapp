//
//  FlightDataCardView.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 02/01/23.
//

import SwiftUI

struct FlightDataCardView: View {
    
    var flightID: String;
    var startingPoint: String
    var destinationPoint: String
    
    var color1 = Color("CardViewColour1")
    var color2 = Color("CardViewColour2")
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [color1,color2]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 360,height: 200)
                .shadow(color: Color.gray, radius: 15,x: 5,y: 25)
            VStack(spacing: 30 ){
                Text(flightID)
                    .foregroundColor(.white)
                    .bold()
                HStack(spacing: 45){
                    Text(startingPoint).foregroundColor(.white).bold()
                    Image(systemName: "airplane")
                        .foregroundColor(.white)
                        .font(.system(size: 75))
                    Text(destinationPoint).foregroundColor(.white).bold()
                }
            }
        }
    }
}

struct FlightDataCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDataCardView(flightID: "EAS1234", startingPoint: "Bangalore", destinationPoint: "Mumbai")
    }
}
