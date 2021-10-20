//
//  ViewController.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import UIKit

class ViewController: UIViewController, scoreDelgate {
    
    
    
    func didupdateUI(_ myscore: score) {
        print(myscore.content)
        mylabel.text = myscore.content
    }
    
    

    
    var smth = my_data()

    override func viewDidLoad() {
        super.viewDidLoad()
        smth.delegate = self
        
    }
    
    
    @IBAction func mybutton(_ sender: Any) {
        smth.fetchData()
    }
    
    
    @IBOutlet weak var mylabel: UILabel!
    
    

}

