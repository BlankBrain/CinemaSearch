//
//  MovieModel.swift
//  CinemaTest
//
//  Created by Md. Mehedi Hasan on 6/5/21.
//

import Foundation


// MARK: - Movie
struct Movie :Decodable  {
    let page: Int
    let results: [Result]
    let totalPages : Int
    let totalResults: Int
    init(
        page: Int?,
        results:  [Result] = [],
        totalPages: Int?,
        totalResults: Int?
    
    ){
        self.page = page ?? 1
        self.results = results
        self.totalPages = totalPages ?? 1
        self.totalResults = totalResults ?? 1
    }
}

// MARK: - Result
struct Result :Decodable{
    let adult: Int
    let backdropPath: String?
    let genreIDS: [genreIDS]
    let id: Int
    let originalLanguage: OriginalLanguage
    let originalTitle : String?
    let overview: String?
    let popularity: Double?
    let posterPath: String?
    let releaseDate : String?
    let title: String?
    let video: Bool
    let voteAverage: Double?
    let voteCount: Int?
    
    init(
        adult: Int?,
        backdropPath: String?,
        genreIDS:  [genreIDS] = [],
        id: Int?,
        originalLanguage: OriginalLanguage,
        originalTitle: String?,
        overview: String?,
        popularity: Double?,
        posterPath: String?,
        releaseDate: String?,
        title: String?,
        video: Bool?,
        voteAverage: Double?,
        voteCount: Int?) {
        self.adult = adult ?? 0
        self.backdropPath = backdropPath
        self.genreIDS = genreIDS
        self.id = id ?? 404
        self.originalLanguage = originalLanguage
        self.originalTitle = originalTitle
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.title = title
        self.video = video ?? false
        self.voteAverage = voteAverage
        self.voteCount = voteCount

    }
}

enum OriginalLanguage: String, Decodable  {
    case en, other
}
struct genreIDS :Decodable {
    
        let genreID: Int?
    init(
        genreID: Int?){
        self.genreID = genreID

    }
}



