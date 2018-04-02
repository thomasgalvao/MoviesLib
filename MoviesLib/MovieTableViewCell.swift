//
//  MovieTableViewCell.swift
//  MoviesLib
//
//  Created by Thomas Galvão on 28/03/2018.
//  Copyright © 2018 EricBrito. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var lbCategories: UILabel!
    @IBOutlet weak var ivPoster: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbSummary: UILabel!
    @IBOutlet weak var lbRating: UILabel!
    
    func prepare(with movie: Movie){
        ivPoster.image = UIImage(named: movie.imageSmall)
        lbTitle.text = movie.title
        lbCategories.text = movie.categoriesDescription
        lbSummary.text = movie.summary
        lbRating.text = "⭐️ \(movie.rating) / 10"
    }
}
