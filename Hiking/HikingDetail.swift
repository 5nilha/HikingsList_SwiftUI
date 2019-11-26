//
//  HikingDetail.swift
//  Hiking
//
//  Created by Fabio Quintanilha on 11/25/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import SwiftUI

struct HikingDetail: View {
    
    let hike: Hike
    
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                    
            }
            
            Text(hike.name)
            Text(String(format: "%.1f miles", hike.miles))
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikingDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetail(hike: Hike(id: "4", name: "Angels Landing", imageURL: "tam", miles: 10.0))
    }
}
