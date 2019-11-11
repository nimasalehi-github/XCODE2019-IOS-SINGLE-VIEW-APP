//
//  File-ROOMStore.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/11/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import Foundation
import Combine

class ROOMStore: ObservableObject {
    
    @Published var rooms: [Room]{
            didSet { didChange.send()}
    }
    
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    @Published var didChange = PassthroughSubject<Void, Never>()
    
}
  
