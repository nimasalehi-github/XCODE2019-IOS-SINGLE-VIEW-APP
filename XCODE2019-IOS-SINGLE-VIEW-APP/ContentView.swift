//
//  ContentView.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/3/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                ExtractedViewROOMCELL(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
        
    }
}
//ExtractedViewROOMCELL
struct ExtractedViewROOMCELL: View {
    let room: Room

    var body: some View {
        return NavigationLink(destination: SwiftUIView_ROOMDetail(room: room)) {
            
            Image(room.thumbnailName)
                .cornerRadius(15.0)
            
            VStack {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
