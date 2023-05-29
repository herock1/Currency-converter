//
//  HomeViewmodel.swift
//  Currency-converter
//
//  Created by Herock Hasan on 28/2/23.
//

import Foundation
import Combine

class HomeViewModel {
    
    let countrySymbol = PassthroughSubject<CurrencyListResponse,Error>()
    
    let apiService: APIServiceProtocol
    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }
    
    func fetchCountryList() {
        apiService.getData (complete:{ currencyLists, error in
            self.countrySymbol.send(currencyLists)
        })
    }
}
