//
//  ShopViewController.swift
//  Japacul Map
//
//  Created by 実葵 on 2018/01/28.
//  Copyright © 2018年 実葵. All rights reserved.
//

import UIKit
import MapKit

class ShopViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let initialLocation = CLLocation.init(latitude: 35.681167, longitude: 139.767052)
    let regionRadius : CLLocationDistance = 1000
        
    func make(location:CLLocation)
    let coodinateRegion = MKCoordinateRegionManeWithDistance(location.coodinate)
        
    }

}
