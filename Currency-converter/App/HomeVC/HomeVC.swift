//
//  ViewController.swift
//  Currency-converter
//
//  Created by Herock Hasan on 28/2/23.
//

import UIKit
import Combine

class HomeVC: UIViewController {
    var coordinator: HomeFlow?
    var currencyList : CurrencyListResponse?
    var homeViewModel: HomeViewModel?
    var dbservice: DBService?
    var apiservice: APIService?
    var symbols : [String : String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeViewModel = HomeViewModel()
        homeViewModel?.fetchCountryList()
        showCurrencySymbols()
        
        homeViewModel?.countrySymbol.sink(receiveCompletion: {  status in
            switch status {
            case .failure(let error ): print(error)
            case .finished: break
            }
            print("The API Fetched Perfectly")
        }, receiveValue: { symbol in
            print("The API Fetched Perfectly")
            print(symbol)
            self.currencyList = symbol
        })
    }
    
    func showCurrencySymbols()
    {
      
    }
}

