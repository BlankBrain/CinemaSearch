//
//  ViewController.swift
//  CinemaTest
//
//  Created by Md. Mehedi Hasan on 6/5/21.
//

import UIKit
import Alamofire

class MovielistVC: UIViewController, UITableViewDelegate , UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifiar : String = "cell"
    let decoder = JSONDecoder()
    var movies = [Movie]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // af reqq
        let Url = "https://api.themoviedb.org/3/search/movie?api_key=38e61227f85671163c275f9bd95a8803&query=marvel"
        AF.request(Url).responseJSON{ response in
            
                    do{
                        print(response)

                     
                        let Result = try self.decoder.decode(Movie.self , from: response.data! )
                        
                        print(Result)
                        
                    }catch{
                        print("error parsing json data")  }

                    }
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
