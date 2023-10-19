//
//  TableViewController.swift
//  ParksMapView
//
//  Created by Aset Bakirov on 19.10.2023.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayNatPark = [NationalPark(title: "Баянаул", description: "Баянауыл мемлекеттік ұлттық табиғи паркі. Основан в 1985 году. Общая площадь 68 452,8 га. Расположен на юге Павлодарской области. В парке представлено четыре вида растительности — лес, лесостепь, степь и луг. На территории парка расположены четыре относительно крупных пресноводных озера — Сабындыколь, Жасыбай, Торайгыр и Биржанколь.", image: "bayanaul", latitude: 51.0000, longitude: 75.4000), NationalPark(title: "Иле-Алатау", description: "Іле Алатауы ұлттық паркі. Площадь 199 621 га, расположен он к югу от города Алматы на северном макросклоне Заилийского Алатау. Самая высокая вершина — пик Конституции (4540 м), вторая по величине — пик 25 лет Казахстана (4494 м).", image: "alatau", latitude: 43.0667, longitude: 77.1667), NationalPark(title: "Алтын-Эмель", description: "Алтынемел. Парк в долине реки Или. Занимает территорию, ограниченную с юга рекой Или и Капшагайским водохранилищем, с севера западными отрогами Джунгарского Алатау — горами Шолак, Матай Алтынемель и Кояндытау, с востока невысокими горами Актау. Название хребта происходит от названия основного перевала через него, в переводе с тюркско-монгольского Алтынэмель — «золотое седло» («алтын» — золото и «эмель» — седло).", image: "altynemel", latitude: 44.06365, longitude: 78.80234), NationalPark(title: "Каркаралинск", description: "Қарқаралы ұлттық паркі. Площадь более 90 га, Пять массивных горных групп: Аиртау, Бугулы, Кент, Матен и Шанкоз. Самые высокие пики относятся к системе Кента и их высота составляет примерно 1400 метров. К каждой горе прилегают водные источники, такие как Кендара, Кенгир, Аюшат, Озен и другие. Среди самых известных озер национального парка - озера Бассейн и Шайтанколь (Чертово озеро).", image: "karkar", latitude: 49.41667, longitude: 76.41667), NationalPark(title: "Бурабай", description: "«Бурабай» ұлттық паркі. Бурабай широко известен как географический пункт с оригинальной, редко встречающейся на земле природой. Поверхность урочища Бурабай представляет собой невысокую горную страну, входящую в состав Казахского мелкосопочника.", image: "burabai", latitude: 53.0833, longitude: 70.3), NationalPark(title: "Чарын", description: "Шарын ұлттық паркі. Чарынский каньон «Долина замков» представляет собой геоморфологический объект, наглядно отражающий процессы рельефообразования и имеющий особую ценность для туризма и рекреации.  Восточная часть гор «Малые Бугуты» — зона заповедного режима, где охраняется джейран, занесённый в Красную книгу РК, сибирский горный козёл, сокол-балобан.", image: "sharyn", latitude: 43.35015, longitude: 79.06963)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNatPark.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        175
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let lableTitle = cell.viewWithTag(101) as! UILabel
        lableTitle.text = arrayNatPark[indexPath.row].title
        
        let parkImage = cell.viewWithTag(100) as! UIImageView
        parkImage.image = UIImage(named: arrayNatPark[indexPath.row].image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        detailVC.parks = arrayNatPark[indexPath.row]
        
        navigationController?.show(detailVC, sender: self)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
