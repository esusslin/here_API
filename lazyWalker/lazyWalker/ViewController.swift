//
//  ViewController.swift
//  lazyWalker
//
//  Created by Emmet Susslin on 1/27/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    

    @IBOutlet weak var mapView: NMAMapView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.useHighResolutionMap = true
        var coordinates: NMAGeoCoordinates
        coordinates = NMAGeoCoordinates(latitude: 49.258867, longitude: -123.008046)
        mapView.zoomLevel = 13.2
        mapView.set(geoCenter: coordinates, animation: NMAMapAnimation.linear)
        mapView.copyrightLogoPosition = NMALayoutPosition.bottomCenter
        addMapCircle()
    }
    
    func addMapCircle() {
        if addMapCircle == nil {
            let coordinates: NMAGeoCoordinates =
                NMAGeoCoordinates(latitude: 49.258867, longitude: -123.008046)
            var mapCircle = NMAMapCircle(coordinates: coordinates, radius: 50)
            mapView.add(mapCircle)
        }
    }

}

