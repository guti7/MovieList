//
//  ViewController.swift
//  MovieList
//
//  Created by Guti on 10/5/16.
//  Copyright © 2016 PielDeJaguar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = ["Elf", "2001", "Back to the Future", "Snowden"]
    var other = ["The Matrix", "Colombiana", "Inception", "Salt"]
    var movies: [[String]] = []
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        movies = [array, other]
        
        // make sure you comform to protocols
        // to make class its own data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return movies.count
    }
    // from data source protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! // use a variable instead of String --- prevent misspelling
        cell.textLabel?.text = movies[indexPath.section][indexPath.row]
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let destinationController = segue.destination as! DetailView
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationController.movieTitle = movies[indexPath.section][indexPath.row]
            }
        }
    }

}

