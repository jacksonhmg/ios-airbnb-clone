//
//  AirbnbDetailView.swift
//  airbnb-ios-clone
//
//  Created by jackson mowatt gok on 20/10/2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    // Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .frame(width: proxy.frame(in: .global).width)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    
                    // Info
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    // Host info
                    HStack {
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Text(model.host_name)
                            .bold()
                    }
                }
                .frame(maxWidth: proxy.frame(in: .local).width)
            }
        }
    }
}

