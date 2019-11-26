//
//  ContentView.swift
//  Hiking
//
//  Created by Fabio Quintanilha on 11/25/19.
//  Copyright © 2019 FabioQuintanilha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            
            List(self.hikes, id: \.id) { hike in
                
                NavigationLink(destination: HikingDetail(hike: hike)) {
                     HikeCell(hike: hike)
                }
               
                
            }
            .navigationBarTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
                .shadow(radius: 3)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.system(.body))
                Text(String(format: "%.1f miles", hike.miles))
            }
            
        }
    }
}
