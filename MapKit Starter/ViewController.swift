//
//  ViewController.swift
//  MapKit Starter
//
//  Created by Pranjal Satija on 10/25/16.
//  Copyright © 2016 Pranjal Satija. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet var mapView: MKMapView?
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        requestLocationAccess()
        mapView?.showsUserLocation = true
    }
    
    func requestLocationAccess() {
        let status = CLLocationManager.authorizationStatus()
        
        switch status {
            case .authorizedAlways, .authorizedWhenInUse:
                return
            case .denied, .restricted:
                print("location access denied")
            default:
                locationManager.requestWhenInUseAuthorization()
        }
    }
    
}

