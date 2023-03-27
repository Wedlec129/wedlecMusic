//
//  TableViewControllerTracklist.swift
//  wedlecMusic
//
//  Created by Борух Соколов on 27.03.2023.
//

import UIKit

//мы создали спец файл для нашего макета типа Taibleview
//и поскольку другая основа тут немного дргие ф-я
//ут в основноя ячейки + дайть индификатор


class TableViewControllerTracklist: UITableViewController {
    
    
    let imageNameArray = [    "Alberto Ruiz Elements (Original Mix)",
                            "Dave Wincent - Red Eye (Original Mix)",
                            "E-Spectro - End Station (Original Mix)",
                            "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                            "Ilija Djokovic - Delusion (Original Mix)",
                            "John Baptiste - Mycelium (Original Mix)",
                            "Lane 8 - Fingerprint (Original Mix)",
                            "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                            "Metodi Hristov, Gallya - Badmash (Original Mix)",
                            "Veerus, Maxie Devine - Nightmare (Original Mix)"]
    

    @IBOutlet var uiw: [UITableView]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    //возврашает колличество секций используемых во view control
   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    //возвращает количество строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNameArray.count //кол-во cтрок = кол-во композиций в массиве
    }

    
    //тут определяем содержимое ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //то как индифицировали  нашу 1 ячейку
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        //добавляем элементы
       
        cell.imageView?.image=UIImage(named:imageNameArray[indexPath.row])
        cell.textLabel?.text=imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines=0 //неогр кол-во строк
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat {
        return 60
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

    
    // MARK: - Navigation
    //используется для передачи данных

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //переход и передача данных
        if segue.identifier == "showdDetail"{
            if let indexPath=self.tableView.indexPathForSelectedRow{
                let detailsVC = segue.destination as! detailViewController
                detailsVC.track=imageNameArray[indexPath.row]
            }
        }
        
        
        
    }
    

}
