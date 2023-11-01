//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Selçuk İleri on 31.10.2023.
//

import Foundation
import UIKit

class PlaceModel{
    static let sharedInstance = PlaceModel()
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    var placeLatitude = ""
    var placeLongitude = ""
    
    private init(placeName: String = "", placeType: String = "", placeAtmosphere: String = "", placeImage: UIImage = UIImage(), placeLatitude: String = "", placeLongitude: String = "") {
        self.placeName = placeName
        self.placeType = placeType
        self.placeAtmosphere = placeAtmosphere
        self.placeImage = placeImage
        self.placeLatitude = placeLatitude
        self.placeLongitude = placeLongitude
    }
}
