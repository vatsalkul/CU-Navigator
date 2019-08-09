//
//  PlaceView.swift
//  CU Navigator
//
//  Created by Vatsal Kulshreshtha on 09/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct PlaceView: View {
    
    var places:Places
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(places.imageName)
                .resizable()
                .renderingMode(.original)
                .frame(width: 300, height: 170)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
                .shadow(radius: 10)
           
            VStack(alignment: .leading, spacing: 5){
                Text(places.name)
                    .font(.headline)
                    .colorMultiply(.primary)
                    
                Text(places.description)
                    .font(.subheadline)
                    .colorMultiply(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
                 
            }

            
        }.padding()
        
    }
}

#if DEBUG
struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(places: placesData[2])
    }
}
#endif
