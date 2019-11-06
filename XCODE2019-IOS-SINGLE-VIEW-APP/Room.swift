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
    var thumbnailName: String { return name+"Thumb"}
}

let testData = [
    Room(name: "JSDeck", capacity: 13 , hasVideo: true),
    Room(name: "WSDeck", capacity: 13 , hasVideo: false),
    Room(name: "CTDeck", capacity: 14 , hasVideo: true),
    Room(name: "PMDeck", capacity: 16 , hasVideo: false),
    Room(name: "AMDeck", capacity: 18 , hasVideo: true),
    Room(name: "NDeck", capacity: 19 , hasVideo: true),
    Room(name: "MMDeck", capacity: 15 , hasVideo: true),
    Room(name: "RDeck", capacity: 10 , hasVideo: false),
    Room(name: "RsDeck", capacity: 13 , hasVideo: false),
    Room(name: "CDeck", capacity: 13 , hasVideo: false)
]
