//
//  SwiftUIView-ROOMDetail.swift
//  XCODE2019-IOS-SINGLE-VIEW-APP
//
//  Created by Nima Salehi on 11/8/19.
//  Copyright © 2019 Nima Salehi. All rights reserved.
//

import SwiftUI

struct SwiftUIView_ROOMDetail: View {
    let room: Room
    @State private  var zoomed = false
    var body: some View {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ?  .fill : .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
            .onTapGesture {
                withAnimation { self.zoomed.toggle()
                }
            }
    }
}

struct SwiftUIView_ROOMDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SwiftUIView_ROOMDetail(room: testData[0])
        }
    }
}
