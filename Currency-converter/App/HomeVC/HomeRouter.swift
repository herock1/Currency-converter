//
//  HomeRouter.swift
//  Currency-converter
//
//  Created by Herock Hasan on 13/3/23.
//

import Alamofire

enum HomeRouter: URLRequestConvertible {
    
    case currencyCountryLists
    case exchangeRateList
    case otherAPI
    
    private var method: HTTPMethod {
        switch self {
        case .currencyCountryLists, .exchangeRateList: return .get
        case .otherAPI: return .post
        }
    }
    
    private var path: String {
        switch self {
        case .currencyCountryLists: return AppURL.Currecy.list
        case .exchangeRateList: return ""
        case .otherAPI: return ""
        }
    }
    
    var parameters: [String: String] {
      switch self {
      case .currencyCountryLists:
        return ["helo":"ab"]
      case .exchangeRateList:
          return [:]
      case .otherAPI:
          return [:]
      }
    }
    
    var headers: [String: String] {
        switch self {
        case .currencyCountryLists,.exchangeRateList,.otherAPI:
            return [
                HTTPHeaderField.acceptType.rawValue : ContentType.json.rawValue,
                HTTPHeaderField.contentType.rawValue : ContentType.json.rawValue,
                HTTPHeaderField.apikey.rawValue : Configuration.environment.authToken,
            ]
        }
    }

    func asURLRequest() throws -> URLRequest {
        
        let url = URL(string: Configuration.environment.baseURL)!.appendingPathComponent(path)
        var urlRequest =  URLRequest(url: url)
        urlRequest.method = method
        urlRequest.allHTTPHeaderFields = headers
        urlRequest = try URLEncodedFormParameterEncoder(destination: .methodDependent)
          .encode(parameters, into: urlRequest)
        print(urlRequest.headers)
        return urlRequest
    }
}
