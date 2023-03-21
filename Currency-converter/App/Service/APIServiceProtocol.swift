//
//  APIServiceProtocol.swift
//  Currency-converter
//
//  Created by Herock Hasan on 7/3/23.
//

import Foundation

enum APIError: String, Error {
    case noNetwork = "No Network"
    case serverOverload = "Server is overloaded"
    case permissionDenied = "You don't have permission"
    case none = "yea no error"
}

protocol APIServiceProtocol {
    func getData( complete: @escaping ( _ currencyLists: CurrencyListResponse,  _ error: APIError)->())
}

