//
//  ViewController.swift
//  Currency-converter
//
//  Created by Herock Hasan on 28/2/23.
//

import UIKit

class HomeVC: UIViewController {
    var coordinator: HomeFlow?
    var currencyList : CurrencyListResponse?
    var dbservice: DBService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dbservice = DBService()
        dbservice?.getData { status,response,error  in
            print("Hello world")
        }
        // Do any additional setup after loading the view.
    }


}

