//
//  Api_call.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import Foundation
class my_data{
    func fetchData(){
        let headers = [
            "x-rapidapi-host": "sports-betting-predictions.p.rapidapi.com",
            "x-rapidapi-key": "9e7125c5aemshb60f4d483255b56p15331djsneee03f7f7346"
        ]

    let request = NSMutableURLRequest(url: NSURL(string: "https://sports-betting-predictions.p.rapidapi.com/v3/soccer/prediction")! as URL,
                                            cachePolicy: .useProtocolCachePolicy,
                                        timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers

    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error!)
        } else {
            //parsing data
            let decoder = JSONDecoder()
            do{
            let decoded_data = try decoder.decode(score.self, from: data!)
                print(decoded_data.status)
                print(decoded_data.data[1].probability)
            }
            catch{
                print(error.localizedDescription)
            }
        }
    })

    dataTask.resume()
 }
}
