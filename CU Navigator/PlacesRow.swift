//
//  PlacesRow.swift
//  CU Navigator
//
//  Created by Vatsal Kulshreshtha on 09/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct PlacesRow: View {
    var category:String
    var places:[Places]
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.category)
            .font(.headline)
            
                ScrollView(.horizontal, showsIndicators: false){
                
                    HStack(alignment: .top) {
                        ForEach(self.places, id: \.name){ place in
                        
                                PlaceView(places: place)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                            
 
                    }
                        }

            }
            
        }


        
    }
}

#if DEBUG
struct PlacesRow_Previews: PreviewProvider {
    static var previews: some View {
        PlacesRow(category: "Blocks", places: placesData)
    }
}
#endif
