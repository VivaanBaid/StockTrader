//
//  Api_call.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import Foundation


protocol scoreDelgate{
    func didupdateUI(_ myscore: score)
}
struct my_data{
    
    var delegate: scoreDelgate?

    
    
    
    func parseData(_ input: Data)-> score?{
        let decoder = JSONDecoder()
        do{
            let decoded_data = try decoder.decode(score.self, from: input)
            let myscore = score(id: decoded_data.id, language_code: decoded_data.language_code, content: decoded_data.content, url: decoded_data.url, originator: decoded_data.originator)
            return myscore
        }
        catch{
            print(error.localizedDescription)
            return nil
        }
    }
    
    
    
    func fetchData() {
        let headers = [
            "x-rapidapi-host": "quotes15.p.rapidapi.com",
            "x-rapidapi-key": "9e7125c5aemshb60f4d483255b56p15331djsneee03f7f7346"
        ]


    let request = NSMutableURLRequest(url: NSURL(string: "https://quotes15.p.rapidapi.com/quotes/random/?language_code=en")! as URL,cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers

    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error!)
        } else {
            //parsing data and putting on label on main vc 
            if let scores = self.parseData(data!){
                DispatchQueue.main.async {
                    self.delegate?.didupdateUI(scores)
                }
                
                 
              
            }
        }
    })

    dataTask.resume()
  }
}
