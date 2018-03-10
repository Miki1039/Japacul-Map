//
//  ShopDetailedViewController.swift
//  Japacul Map
//
//  Created by Kento Katsumata on 2018/03/11.
//  Copyright © 2018年 実葵. All rights reserved.
//

import UIKit

class ShopDetailedViewController: UIViewController {
    
    @IBOutlet var shopImage: UIImageView!
    @IBOutlet var shopName: UILabel!
    @IBOutlet var shopDescription: UITextView!
    
    var indexOfAnnotationPressed = UserDefaults.standard.integer(forKey: "indexOfAnnotationPressed")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shopName.text = ShopLocationList().shopDetails[indexOfAnnotationPressed]![0]
        shopImage.image = UIImage(named:ShopLocationList().shopDetails[indexOfAnnotationPressed]![1] )
        shopDescription.text = ShopLocationList().shopDetails[indexOfAnnotationPressed]![2]
    }
}
