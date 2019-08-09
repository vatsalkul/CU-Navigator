//
//  ContentView.swift
//  CU Navigator
//
//  Created by Vatsal Kulshreshtha on 07/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories:[String:[Places]]{
        .init(
            grouping: placesData,
            by: {$0.category.rawValue}
        )
    }
    var body: some View {
        
        NavigationView{
            List(categories.keys.sorted(), id: \String.self){ key in
                
               
                PlacesRow(category: "\(key)".uppercased(), places: self.categories[key]!)
                    .frame(height: 300)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("Chandigarh University"))
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
