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
        List(rooms) { room in
            Image(room.thumbnailName)
                
            VStack {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
        
    }
}
