//
//  DetailView.swift
//  CU Navigator
//
//  Created by Vatsal Kulshreshtha on 09/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var places:Places
    var body: some View {
        List {
            ZStack(alignment: .bottom){
                Image(places.imageName)
                .resizable()
                    .frame(height: 300)
                    .aspectRatio(contentMode: .fit)
                    
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(places.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }.padding(.leading)
                        .padding(.bottom)
                    Spacer()
                }
                
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading){
                Text(places.description)
                    .foregroundColor(.primary)
                    .font(.body)
                .lineLimit(nil)
                .lineSpacing(12)
                
                HStack{
                    Spacer()
                    Button(action: {
                        let zoom = 15
                        let trafficMode = "transit"
                        guard let url = URL(string: "comgooglemaps://?center=\(self.places.coordinates.longitude),\(self.places.coordinates.latitude)&q=\(self.places.coordinates.longitude),\(self.places.coordinates.latitude)&zoom=\(zoom)&views=\(trafficMode)") else { return }
                        if #available(iOS 10.0, *) {
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        } else {
                            UIApplication.shared.openURL(url)
                        }
                        
                    }){
                        Text("Navigate")
                            .frame(width: 200, height: 50)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .font(.headline)
                        .cornerRadius(10)
                    }
                    Spacer()
                    
                }.padding(.top, 50)
            }.padding(.top)
        }.edgesIgnoringSafeArea(.top)
    }
}
#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(places: placesData[3])
    }
}
#endif
