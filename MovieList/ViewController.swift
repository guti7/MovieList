//
//  ViewController.swift
//  MovieList
//
//  Created by Guti on 10/5/16.
//  Copyright © 2016 PielDeJaguar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var movieList: [Movie] = []
    
    
    var array = ["Elf", "2001", "Back to the Future", "Snowden"]
    var other = ["The Matrix", "Colombiana", "Inception", "Salt"]
    var movies: [[String]] = []
   
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        movies = [array, other]
        
        // make sure you comform to protocols
        // to make class its own data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        let movie1 = Movie(name: "Elf", year: 2005, director:"Jose Gutierez")
        let movie2 = Movie(name: "Salt", year: 2010, director: "Fanisa Mlangeni")
        let movie3 = Movie(name: "Colombiana", year: 2011, director:"David Ciaffoni")
        let movie4 = Movie(name: "Snowden", year: 2016, director:"Nick Lamela")
        let movie5 = Movie(name: "Deep Water Horizon", year: 2016, director:"Kadeem Palacios")
        let movie6 = Movie(name: "Storks", year: 2016, director:"Marq Draggon")
        let movie7 = Movie(name: "Pulp Fiction", year: 1994, director:"Eric Wong")
        let movie8 = Movie(name: "Fight Club", year: 1999, director:"Chandan Brown")
        let movie9 = Movie(name: "Goodfellas", year: 1990, director:"Bob De Kort")
        let movie10 = Movie(name: "City of God", year: 2002, director:"Mitchell Hudson")
        let movie11 = Movie(name: "Spirited Away", year: 2001, director:"Jose &Fanisa")
        
        movieList.append(movie1)
        movieList.append(movie2)
        movieList.append(movie3)
        movieList.append(movie4)
        movieList.append(movie5)
        movieList.append(movie6)
        movieList.append(movie7)
        movieList.append(movie8)
        movieList.append(movie9)
        movieList.append(movie10)
        movieList.append(movie11)
       
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       //return movies.count
        return 1
    }
    // from data source protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! // use a variable instead of String --- prevent misspelling
        //cell.textLabel?.text = movies[indexPath.section][indexPath.row]
        cell.textLabel?.text = movieList[indexPath.row].name
//        cell.textLabel?.text = movieList[indexPath.row].name
//        cell.textLabel?.text = movieList[indexPath.row].name
        
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailSegue") {
            let destinationController = segue.destination as! DetailView
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationController.movie = movieList[indexPath.row]
            }
        }
    }

}

