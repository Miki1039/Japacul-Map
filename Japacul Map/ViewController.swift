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
                let shopIcon = UIImage(named: "Shop")
                let tokyoIcon = UIImage(named: "Tokyo station")
                
                func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
                    
                    if let annotation = annotation as? ShopLocation{
                        if let view = mapView.dequeueReusableAnnotationView(withIdentifier: annotation.identifier){
                            return view
                        }else{
                            let view = MKAnnotationView(annotation: annotation, reuseIdentifier: annotation.identifier)
                            let infoBtn = UIButton(type: UIButtonType.detailDisclosure)
                            infoBtn.addTarget(self, action: #selector(infoBtnWasPressed), for: .touchUpInside)
                            view.image = pizzaPin
                            view.isEnabled = true
                            view.canShowCallout = true
                            view.leftCalloutAccessoryView = UIImageView(image: shopIcon)
                            view.rightCalloutAccessoryView = infoBtn
                            
                            return view
                        }
                    }else{
                        if let annotation = annotation as? TokyoCenterCoordinate{
                            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: "center"){
                                return dequeuedView
                            }else {
                                let view = MKAnnotationView(annotation: annotation, reuseIdentifier: "center")
                                view.image = tokyoIcon
                                view.isEnabled = true
                                view.canShowCallout = true
                                return view
                            }
                        }
                    }
                    return nil
             let region = MKCoordinateRegionMakeWithDistance(tokyoCoordinate, 5000, 5000)
             
             mapView.setRegion(region,animated: true)
             
             }

           }
}



