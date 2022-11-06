//
//  ViewController.swift
//  MAPD714-F2022-Lab3
//
//  Created by Betrand Nyarko on 03/11/2022.
//Name: Betrand Nyarko
//ID:301293794
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
//    let favouriteShows = ["Andor","House of Dragons", "Lord of the Rings", "Black Panther", "Kyeiwaa"]
    
    var favouriteShows:[TVShow] = []
    
    let favouriteShowsTableIdentifier = "favouriteShowsTableIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buildFavouriteShows()
    }
    
    func buildFavouriteShows() -> Void{
        favouriteShows.append(TVShow(title: "Andor", studio: "Me"))
        favouriteShows.append(TVShow(title: "Andor", studio: "Me"))
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: favouriteShowsTableIdentifier)
            if (cell == nil) {
                cell = UITableViewCell(
                    style: UITableViewCell.CellStyle.subtitle,
                    reuseIdentifier: favouriteShowsTableIdentifier)
            }

        cell?.textLabel?.text = favouriteShows[indexPath.row].title
        let cellFont = UIFont.systemFont(ofSize: 16.0, weight: UIFont.Weight.bold)
        
        cell?.textLabel?.font = cellFont
        
        
        cell?.detailTextLabel?.text  = favouriteShows[indexPath.row].studio
        cell?.detailTextLabel?.textColor  = UIColor.blue

        
        
            return cell!
    }
    
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.row == 0 ? nil : indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(favouriteShows[indexPath.row].title)
        print(favouriteShows[indexPath.row].studio)
    }


}

