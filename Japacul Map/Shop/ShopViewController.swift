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


class ShopViewController: UIViewController,MKMapViewDelegate {
    let yakimonoImage = UIImage(named: "Shop.jpg")
    let userDefaults = UserDefaults.standard
    var index: Int?
    
    @IBOutlet var mapView: MKMapView!
    let shops = ShopLocationList().shop
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetRegion()
        mapView.addAnnotation(TokyoCenterCoordinate())
        mapView.addAnnotations(shops)
        mapView.delegate = self
    }
    
    func resetRegion(){
        
        let region = MKCoordinateRegionMakeWithDistance(tokyoCoordinate, 5000, 5000)
        mapView.setRegion(region, animated: true)
    }
    
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        index = Int(shops.index(of: view.annotation! as! ShopLocation)!)
        
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let shopIcon = UIImage(named: "Shop")
        let tokyoIcon = UIImage(named: "Tokyo station")
        
        if let annotation = annotation as? ShopLocation{
            if let view = mapView.dequeueReusableAnnotationView(withIdentifier: annotation.identifier){
                return view
            }else{
                let view = MKAnnotationView(annotation: annotation, reuseIdentifier: annotation.identifier)
                let infoBtn = UIButton(type: UIButtonType.detailDisclosure)
                infoBtn.addTarget(self, action: #selector(infoBtnWasPressed), for: .touchUpInside)
                view.image = yakimonoImage
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
    }
    
    @IBAction func unwindToFirstView(segue: UIStoryboardSegue) {
    }
    func infoBtnWasPressed() {
        userDefaults.set(index, forKey: "indexOfAnnotationPressed")
        
        self.performSegue(withIdentifier: "toDetailViewController", sender: nil)
        
    }
}



