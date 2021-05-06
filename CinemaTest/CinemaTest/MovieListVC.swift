//
//  ViewController.swift
//  CinemaTest
//
//  Created by Md. Mehedi Hasan on 6/5/21.
//

import UIKit

class MovielistVC: UIViewController, UITableViewDelegate , UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifiar : String = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
   
    

}
extension MovielistVC {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifiar, for: indexPath) as UITableViewCell
        cell.textLabel?.text = "text"
        return cell
    }
}
