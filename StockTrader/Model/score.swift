//
//  score.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import Foundation

struct score: Codable{
    let status: Int
    let data: mydata
}

struct mydata: Codable{
    let odd: Int
    let home_team: String
    let away_team: String
}
