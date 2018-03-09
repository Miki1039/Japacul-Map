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
 var title: String?
 var subtitle: String?
 var coordinate: CLLocationCoordinate2D
    
    init(name:String,lat:CLLocationDegrees,long:CLLocationDegrees,addInfo:String){
        title = name
        coordinate = CLLocationCoordinate2DMake(lat, long)
        subtitle = addInfo
    }
    
}

class ShopLocationList: NSObject {

  var shop = [ShopLocation]()
  var shopDetails = [Int: [String]]()
    
  override init(){
    shopDetails[0] = ["青山スクエア","test","詳細を記入"]
    shop += [ShopLocation(name:"青山スクエア", lat:35.673647,long:139.727686,addInfo:"info")]
    
    shopDetails[1] = ["浅草たつみや","test","詳細を記入"]
    shop += [ShopLocation(name:"浅草たつみや", lat:35.671928,long:139.760815,addInfo:"info")]
    
    shopDetails[2] = ["浅草FUJIYAMA","test","詳細を記入"]
    shop += [ShopLocation(name:"浅草FUJIYAMA", lat:35.713232,long:139.793467,addInfo:"info")]
    
    shopDetails[3] = ["江戸屋の洋服ブラシ","test","詳細を記入"]
    shop += [ShopLocation(name:"江戸屋の洋服ブラシ", lat:35.689188,long:139.777943,addInfo:"info")]

    shopDetails[4] = ["京都館","test","詳細を記入"]
    shop += [ShopLocation(name:"京都館", lat:35.680443,long:139.769974,addInfo:"info")]
    
    shopDetails[5] = ["くくる","test","詳細を記入"]
    shop += [ShopLocation(name:"くくる", lat:35.705009,long:139.636050,addInfo:"info")]
    
    shopDetails[6] = ["南部鉄器堂","test","詳細を記入"]
    shop += [ShopLocation(name:"南部鉄器堂", lat:35.762938,long:139.781404,addInfo:"info")]
    
    shopDetails[7] = ["浅草とんぼ玉工房","test","詳細を記入"]
    shop += [ShopLocation(name:"浅草とんぼ玉工房", lat:35.714470,long:139.790063,addInfo:"info")]
  
    shopDetails[8] = ["篠原まるよし風鈴","test","詳細を記入"]
    shop += [ShopLocation(name:"篠原まるよし風鈴", lat:35.706691,long:139.781216,addInfo:"info")]
    
    shopDetails[9] = ["すみだ江戸切子館","test","詳細を記入"]
    shop += [ShopLocation(name:"すみだ江戸切子館", lat:35.701256,long:139.813039,addInfo:"info")]
    
    shopDetails[10] = ["蒔絵スタジオ祥幹","test","詳細を記入"]
    shop += [ShopLocation(name:"蒔絵スタジオ祥幹", lat:35.667149,long:139.718032,addInfo:"info")]
    
    shopDetails[11] = ["東京染ものがたり博物館","test","詳細を記入"]
    shop += [ShopLocation(name:"東京染ものがたり博物館", lat:35.713324,long:139.716409,addInfo:"info")]
    
    shopDetails[12] = ["立江戸下町伝統工芸館","test","詳細を記入"]
    shop += [ShopLocation(name:"立江戸下町伝統工芸館", lat:35.716407,long:139.793803,addInfo:"info")]
    
    shopDetails[13] = ["安藤七宝店","test","詳細を記入"]
    shop += [ShopLocation(name:"安藤七宝店", lat:35.671358,long:139.764301,addInfo:"info")]
    
 }


}






