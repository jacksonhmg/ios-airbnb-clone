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
            List(viewModel.listings) { listing in
                Text(listing.name ?? "-" )
            }
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
