//
//  DetailView.swift
//  MovieList
//
//  Created by Guti on 10/5/16.
//  Copyright © 2016 PielDeJaguar. All rights reserved.
//

import UIKit

class DetailView: UIViewController {
    
    
    var movie: Movie?
    var movieTitle: String?
    
    // MARK: IBOutlets
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let movieObject = movie {
            movieTitleLabel.text = movieObject.name
            yearLabel.text = movieObject.year.description
            directorLabel.text = movieObject.director
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
