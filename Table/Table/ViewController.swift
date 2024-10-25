//
//  ViewController.swift
//  Table
//
//  Created by Джан Влад on 25.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var games = ["Bloodborne","Elden Ring","Dark Souls","Dark Souls II","Dark Souls III","Transformers: War for Cybertron","Transformers: Fall of Cybertron","Genshin Impact","Honkai Star Rail","Zenless Zone Zero"]
    var info = ["PlayStation. 2015", "PS,Xbox,PC. 2022", "PS,Xbox,PC,Nintendo. 2011", "PS,Xbox,PC. 2014", "PS,Xbox,PC. 2016","PS,Xbox,PC. 2010", "PS,Xbox,PC. 2012",
    "PS,IOS,Android,PC. 2020", "IOS,Android,PC. 2023", "PS,IOS,Android,PC. 2024"]

    @IBOutlet weak var GamesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // GamesTableView.delegate = self
        GamesTableView.dataSource = self
        
    }
// under comments i was trying to size images under 90 in height, but it doesn't work :(

}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
   /* func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = GamesTableView.dequeueReusableCell(withIdentifier: "cell") as! TableTVC
        let game = games[indexPath.row]
        let information = info[indexPath.row]
        
        cell.nameLBL.text = game
        cell.gameImgView.image = UIImage(named: game)
        cell.DescribtionLBL.text = information
        return cell
    }
}
