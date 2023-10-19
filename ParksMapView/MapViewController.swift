//
//  MapViewController.swift
//  ParksMapView
//
//  Created by Aset Bakirov on 19.10.2023.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var park = NationalPark(title: "", description: "", image: "", latitude: 0.0, longitude: 0.0)
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ______________ Метка на карте ______________
        // Новые координаты для метки на карте
        let lat:CLLocationDegrees = park.latitude
        let long:CLLocationDegrees = park.longitude
        
        // Создаем координта передавая долготу и широту
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        
        // Создаем метку на карте
        let annotation = MKPointAnnotation()
        
        // Задаем коортинаты метке
        annotation.coordinate = location
        // Задаем название метке
        annotation.title = park.title
        // Задаем описание метке
        annotation.subtitle = ""
        
        // Дельта - насколько отдалиться от координат пользователя по долготе и широте
        let latDelta:CLLocationDegrees = 0.5
        let longDelta:CLLocationDegrees = 0.5

        // Создаем область шириной и высотой по дельте
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // Создаем регион на карте с моими координатоми в центре
        let region = MKCoordinateRegion(center: annotation.coordinate, span: span)
        
        // Приближаем карту с анимацией в данный регион
        mapView.setRegion(region, animated: true)
        
        // Добавляем метку на карту
        mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
