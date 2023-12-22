//
//  ContentView.swift
//  Avoid my Opps
//
//  Created by Pranav Addepalli on 12/21/23.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationDataManager = LocationDataManager()
    
    var body: some View {
        VStack {
            switch locationDataManager.locationManager.authorizationStatus {
            case .authorizedWhenInUse:
                Text("current location:")
                Text("Latitude: \(locationDataManager.currentLocation?.coordinate.latitude.description ?? "Error loading")")
                Text("Longitude: \(locationDataManager.currentLocation?.coordinate.longitude.description ?? "Error loading")")
                
            case .restricted, .denied:
                Text("location usage was denied")
            case .notDetermined:
                Text("locating...")
                ProgressView()
            default:
                ProgressView()
            }
        }
    }
}
