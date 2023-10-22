//
//  AirbnbListingsView.swift
//  airbnb-ios-clone
//
//  Created by jackson mowatt gok on 20/10/2023.
//

import Foundation
import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: Text("Hello"), label: { AirbnbListingCardView(model: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
