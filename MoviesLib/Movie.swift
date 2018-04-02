//
//  Movie.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 28/03/18.
//  Copyright © 2018 EricBrito. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let title: String
    let categories: [String]
    let duration: String?
    let rating: Double
    let summary: String
    let imageName: String
    
    var imageSmall: String {
        return imageName + "-small.jpg"
    }
    
    var imageWide: String {
        return imageName + "-wide.jpg"
    }
    
    var categoriesDescription: String {
        return categories.joined(separator: " | ")
    }
    
    //Drama | Ação | Terror
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case categories = "categories"
        case duration = "duration"
        case rating = "rating"
        case summary = "summary"
        case imageName = "image_name"
    }
}
