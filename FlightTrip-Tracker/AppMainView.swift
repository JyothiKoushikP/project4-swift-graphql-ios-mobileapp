//
//  ContentView.swift
//  FlightTrip-Tracker
//
//  Created by Jyothi Koushik on 27/12/22.
//

import SwiftUI
import Apollo

struct AppMainView: View {
    
    let captionString = """
    Looking for the best flight to satisfy your travel needs? \n
    Relax while we solve your troubles!!! \n
    The best mobile app with flight data from more than 16 Indian states!!! \n
    Start Looking Now!!! \n
    """
    
    var body: some View {
        ZStack {
            Color("CustomColorSet1")
                .ignoresSafeArea()
            VStack(spacing:30) {
                Text(captionString)
                    .foregroundColor(.white).multilineTextAlignment(.center)
                    .font(.system(size: 30))
                
                Button("Search Flights") {
                    print("Button pressed!")
                }
                .padding()
                .foregroundColor(.white)
                .font(.custom("Roboto-Light", size: 30))
                .background(Color(red: 0.3, green: 0.6, blue: 0.1))
                .clipShape(Rectangle())
                .cornerRadius(20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
