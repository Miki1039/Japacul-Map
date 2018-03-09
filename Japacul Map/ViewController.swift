//
//  ViewController.swift
//  Japacul Map
//
//  Created by 実葵 on 2018/01/14.
//  Copyright © 2018年 実葵. All rights reserved.
//

import UIKit
import MapKit

let tokyoCoordinate = CLLocationCoordinate2DMake(35.681167, 139.767052)

class TokyoCenterCoordinate: NSObject,MKAnnotation{
    var coordinate: CLLocationCoordinate2D = tokyoCoordinate
    var title: String? = "Tokyo Station"
}

class ViewController: UIViewController {
        
        class ViewController: UIViewController,MKMapViewDelegate {

            @IBOutlet var mapView: MKMapView!
            let shops = ShopLocationList().shop
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                var center: CLLocationCoordinate2D = tokyoCoordinate
                self.resetRegion()
                
                mapView.addAnnotation(TokyoCenterCoordinate())
                mapView.addAnnotations(shops)
                mapView.delegate = self
            }
            
            func resetRegion(){
                let region = MKCoordinateRegionMakeWithDistance(tokyoCoordinate, 5000, 5000)
                
                func setRegion(region: MKCoordinateRegion, animated: Bool){
                
                }
            }
            
        }
    
}



