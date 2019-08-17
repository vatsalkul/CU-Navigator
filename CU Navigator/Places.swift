//
//  Places.swift
//  CU Navigator
//
//  Created by Vatsal Kulshreshtha on 09/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Places: Hashable, Codable, Identifiable{
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    var coordinates: Coordinates
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    enum Category: String, CaseIterable, Codable, Hashable {
        case blocks = "Blocks"
        case others = "Others"
    }
}
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
