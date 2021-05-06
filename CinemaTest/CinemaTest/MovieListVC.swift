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
    var Movies = Movie(page: 1, totalPages: 1, totalResults: 1)
    //-------
    var Titles = [String]()
    var OverView = [String]()
    var imageUrl = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // alamofire request
        let Url = "https://api.themoviedb.org/3/search/movie?api_key=38e61227f85671163c275f9bd95a8803&query=marvel"
        AF.request(Url).responseJSON{ response in
//                    do{
//                        print(response)
//                        //Data Fetched successfully
//
//                        // there is a error in my model so i could not use it using decoder. i'm confident that it's a minor error and given enough time i can solve it on my own.
//                        let movies = try self.decoder.decode(Movie.self , from: response.data! )
//                        print(movies)
//                        self.Movies = movies
//
//
//                    }catch{
//
//                        print("error parsing json data")  }
            
            //MARK : dic
            
                let json = try? JSONSerialization.jsonObject(with: response.data!, options: [])
            if let dictionary = json as? [String: Any] {


                if let nestedDictionary = dictionary["results"] as? [[String:Any]] {
                    
                    for item in nestedDictionary {
                     
                       // print(item)
                        self.Titles.append(item["title"] as! String )
                        self.OverView.append(item["overview"] as! String )
                        self.imageUrl.append(item["poster_path"] as? String  ?? "")
                        print(item["poster_path"])

                        self.tableView.reloadData()
                        
                    }

                }
            }
                    }
        
       
        
        
    }
    
   

}
extension MovielistVC {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifiar, for: indexPath) as! TableViewCell
//        cell.Title.text = Movies.results[indexPath.row].title ?? "plsceholder title"
//        cell.Overview.text = Movies.results[indexPath.row].title ?? "placeholder overview"
//        cell.Image = ("url placeholder" + ( Movies.results[indexPath.row].posterPath ?? "" ) )


        
        cell.Title.text = self.Titles[indexPath.row]
        cell.Overview.text = self.OverView[indexPath.row]
//        cell.imageview = ("https://image.tmdb.org/t/p/w500" + ( self.imageUrl[indexPath.row] ?? "/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg" ) )

        return cell
    }
}
