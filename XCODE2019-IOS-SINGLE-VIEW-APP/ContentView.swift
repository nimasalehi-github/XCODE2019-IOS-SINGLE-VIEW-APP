//
//  ContentView.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/3/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var store = ROOMStore()
    
    var body: some View {
        NavigationView {
            List {
                Section{
                    Button(action: ADDRoom){
                        Text("AddDeck")
                    }
                }
                
                Section{
                    ForEach(store.rooms){room in
                        ExtractedViewROOMCELL(room: room)
                    }
                    .onDelete(perform: deleteRoom(at:) )
                }
            }
            .navigationBarTitle(Text("Decks"))
            .listStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=List Style@*/DefaultListStyle()/*@END_MENU_TOKEN@*/)
        }
    }
    func ADDRoom()  {
        store.rooms.append(Room(name: "HallDeck", capacity: 2000, hasVideo: true))
    }
    
    func deleteRoom(at offsets: IndexSet){
        store.rooms.remove(atOffsets: offsets)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: ROOMStore(rooms: testData))
    }
}
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
