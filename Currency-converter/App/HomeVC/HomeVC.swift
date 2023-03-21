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
    var apiservice: APIService?

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dbservice = DBService()
//        dbservice?.getData { response,error  in
//            print("Hello world")
//        }
        
        apiservice = APIService()
        apiservice?.getData(complete: { result , error in
            if(error == APIError.none)
            {
                print("API Called")
            }
        })
        // Do any additional setup after loading the view.
        
        let currentConfiguration = Configuration.environment.baseURL
        
        print(currentConfiguration)
    }


}

