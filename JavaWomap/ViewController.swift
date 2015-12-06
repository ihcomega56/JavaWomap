//
//  ViewController.swift
//  JavaWomap
//
//  Created by ihcomega on 2015/12/04.
//  Copyright © 2015年 ihcomega. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    let tokyoIcon = UIImage(named: "DuchessTokyo.png")
    let kansaiIcon = UIImage(named: "DuchessKansai.png")
    let kyushuIcon = UIImage(named: "DuchessKyushu.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.cameraWithLatitude(35.181446, longitude: 136.506398, zoom: 5)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        func addMarker(longitude: Double, latitude: Double, caption: String, population: Int, icon: UIImage) {
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(longitude, latitude)
        marker.title = caption
        marker.snippet = population.description + "名"
        
        marker.map = mapView
        marker.icon = icon
        }
        
        addMarker(35.689634, latitude: 139.692101, caption: "Java女子部(関東)", population: 290, icon: tokyoIcon!)
        addMarker(34.686297, latitude: 135.519661, caption: "関西Java女子部", population: 60, icon: kansaiIcon!)
        addMarker(33.606576, latitude: 130.418297, caption: "九州Java女子部", population: 1, icon: kyushuIcon!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

