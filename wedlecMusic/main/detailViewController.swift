//
//  detailViewController.swift
//  wedlecMusic
//
//  Created by Борух Соколов on 27.03.2023.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    var track=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image=UIImage(named: track)
        text.text=track
        text.numberOfLines=0

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
