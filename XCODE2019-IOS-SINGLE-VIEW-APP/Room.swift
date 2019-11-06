//
//  Room.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/6/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import Foundation

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

#if DEBUG
let testData = [
    Room(name: " J SDeck", capacity: 13 , hasVideo: true),
    Room(name: " W SDeck", capacity: 13 , hasVideo: false),
    Room(name: " C TDeck", capacity: 14 , hasVideo: true),
    Room(name: " P MDeck", capacity: 16 , hasVideo: false),
    Room(name: " A MDeck", capacity: 18 , hasVideo: true),
    Room(name: " N Deck", capacity: 19 , hasVideo: true),
    Room(name: " M&M Deck", capacity: 15 , hasVideo: true),
    Room(name: " R Deck", capacity: 10 , hasVideo: false),
    Room(name: " R Deck", capacity: 13 , hasVideo: false),
    Room(name: " C Deck", capacity: 13 , hasVideo: false)
]
#endif
