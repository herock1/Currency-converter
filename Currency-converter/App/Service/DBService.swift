//
//  DBService.swift
//  Currency-converter
//
//  Created by Herock Hasan on 7/3/23.
//

import Foundation

class DBService : APIServiceProtocol {
    
    func getData( complete: @escaping (  _ success: Bool, _ currencyLists: CurrencyListResponse, _ error: APIError)->()){

        guard let path = Bundle.main.path(forResource: "currrencydata", ofType: "json") else{ print("Empty Json")
            return
        }
        let url = URL(fileURLWithPath: path)

        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let responseModel = try decoder.decode(CurrencyListResponse.self, from: data)
            print(responseModel.symbols?.keys ?? "No key found")
            complete(true,responseModel, APIError.none)
            
        } catch {
            print(error)
        }
    }
}
