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
        ZStack(alignment: .topLeading){
            Image(room.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ?  .fill : .fit)
                .navigationBarTitle(Text(room.name), displayMode: .inline)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 2)) { self.zoomed.toggle() }
                        
                }
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
            
            if room.hasVideo && !zoomed{
                Image(systemName: "video.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

struct SwiftUIView_ROOMDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                SwiftUIView_ROOMDetail(room: testData[0])
            }
            
            NavigationView{
                SwiftUIView_ROOMDetail(room: testData[1])

            }
        }
    }
}
