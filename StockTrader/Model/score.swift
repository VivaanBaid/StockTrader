//
//  score.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import Foundation

struct score: Codable{
    let id: Int
    let language_code: String
    let content:String
    let url: String
    let originator: originators
}

struct originators: Codable {
    let id: Int
    let name:String
    let url: String
}
