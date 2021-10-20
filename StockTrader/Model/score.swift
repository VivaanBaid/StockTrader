//
//  score.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import Foundation

struct score: Codable{
    let status: Int
    let data: [mydata]
}

struct mydata: Codable{
    
    let away_team: String
    let competition :String
    let country:String
    let date:String
    let fixture_status:String
    let home_team: String
    let id:Int
    let market_name:String
    let odd:String
    let prediction:String
    let probability:String
    let results:String
    let sport_id:Int
    let sport_name:String
}
