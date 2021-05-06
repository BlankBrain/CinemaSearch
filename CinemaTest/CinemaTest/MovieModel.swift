//
//  MovieModel.swift
//  CinemaTest
//
//  Created by Md. Mehedi Hasan on 6/5/21.
//

import Foundation

// MARK: - Movie
struct Movie {
    let page: Int
    let results: [Result]
    let totalPages, totalResults: Int
}

// MARK: - Result
struct Result {
    let adult: Bool
    let backdropPath: String?
    let genreIDS: [Int]
    let id: Int
    let originalLanguage: OriginalLanguage
    let originalTitle, overview: String
    let popularity: Double
    let posterPath: String?
    let releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
}

enum OriginalLanguage {
    case en
}

