//
//  ViewController.swift
//  ParksMapView
//
//  Created by Aset Bakirov on 19.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var parkImage: UIImageView!
    @IBOutlet weak var parkTitle: UILabel!
    @IBOutlet weak var parkDescription: UILabel!
    
    @IBAction func showLocation(_ sender: Any) {
        //MapView
        let mapVC = storyboard?.instantiateViewController(withIdentifier: "MapView") as! MapViewController
    
        navigationController?.show(mapVC, sender: self)
        mapVC.park = parks
        
    }
    
    var parks = NationalPark(title: "", description: "", image: "", latitude: 0.0, longitude: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parkImage.image = UIImage(named: parks.image)
        parkTitle.text = parks.title
        parkDescription.text = parks.description
    }


}

