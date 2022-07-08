//
//  Book.swift
//  Bookshelf
//
//  Created by Laura Gongaware on 7/7/22.
//

import Foundation

struct Book: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var author: String
    var coverArt: String
    var releaseYear: String
    var description: String
}
