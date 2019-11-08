//
//  SwiftUIView-ROOMDetail.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/8/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import SwiftUI

struct SwiftUIView_ROOMDetail: View {
    var room: Room
    
    var body: some View {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
    }
}

struct SwiftUIView_ROOMDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SwiftUIView_ROOMDetail(room: testData[0])
        }
    }
}
