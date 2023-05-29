//
//  APIService.swift
//  Currency-converter
//
//  Created by Herock Hasan on 7/3/23.
//

import Foundation
import Alamofire

class APIService: APIServiceProtocol {
    
    func getData( complete: @escaping ( _ currencyLists: CurrencyListResponse, _ error: APIError)->()) {
        
        AF.request(HomeRouter.currencyCountryLists)
            .validate()
            .responseDecodable(of: CurrencyListResponse.self) { (response) in
                if let countryList = response.value {
                    print(countryList.symbols?.keys ?? "No key found")
                     complete(countryList, APIError.none)
                }
                else {
                    print(response.error)
                }
            }
    }
}
