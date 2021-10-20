//
//  ViewController.swift
//  StockTrader
//
//  Created by Vivaan Baid on 19/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let smth = my_data()
        smth.fetchData()
    }


}

