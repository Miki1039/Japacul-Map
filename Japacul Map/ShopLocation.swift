//
//  ShopLocation.swift
//  Japacul Map
//
//  Created by 実葵 on 2018/02/18.
//  Copyright © 2018年 実葵. All rights reserved.
//

import Foundation
import MapKit

class ShopLocation: NSObject, MKAnnotation{
    
 var identifier = "Shop location"
 var title: String
 var subtitle: String
 var coordinate: CLLocationCoordinate2D
    
  init(name:String,lat:CLLocationDegrees,long:CLLocationDegrees,addInfo:String){
        title = name
        coordinate = CLLocationCoordinate2DMake(lat, long)
        subtitle = addInfo
  }

}

class ShopLocationList: NSObject {

  var shoparray: ShopLocation
  let shopDetails: [Int: String]
    
  override init(){

  }


}














