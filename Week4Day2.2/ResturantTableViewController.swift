import UIKit
struct Product {
    
    var Name : String = ""
    var Discribtion :String = ""
    var price: Double
    var image: UIImage?
}


class ResturantTableViewController: UITableViewController {
    
    var item:[Product] = [
        Product (Name: "Espreso", Discribtion: "one shot", price: 10.0, image: UIImage(named: "Image1")),
        
        Product (Name: "Captcheno", Discribtion: "Tow shot", price: 15.0, image: UIImage(named: "Image3")),
        
        Product (Name: "Moca", Discribtion: "hot", price: 10.0, image: UIImage(named: "Image4")),
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "BannerCell", bundle: nil), forCellReuseIdentifier: "itemCell")
        
        tableView.register(UINib(nibName: "TobBannerCell", bundle: nil), forCellReuseIdentifier: "imageCell")
        
        tableView.rowHeight = 120
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
            
        }else{
            return item.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let  cell  = tableView.dequeueReusableCell(withIdentifier:  "imageCell", for: indexPath)
            
            return cell
        }else{
            
            let  cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
            as! BannerCell
            
            cell.Name.text = item[indexPath.row].Name
            cell.Discribtion.text = item[indexPath.row].Discribtion
            cell.Price.text = String (item[indexPath.row].price)
            cell.productImage.image = (item[indexPath.row].image)
            return cell
            
        }
    }
    
}
