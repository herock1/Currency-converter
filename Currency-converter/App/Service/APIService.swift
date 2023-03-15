//
//  APIService.swift
//  Currency-converter
//
//  Created by Herock Hasan on 7/3/23.
//

import Foundation
import Alamofire

class APIService: APIServiceProtocol {
    
    private static func performRequest<T:Decodable>(route:HomeRouter, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
        return AF.request(route)
                        .responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
                            completion(response.result)
        }
    }
    
    func getData( complete: @escaping (  _ success: Bool, _ currencyLists: CurrencyListResponse, _ error: APIError)->()) {
        
    }
}
