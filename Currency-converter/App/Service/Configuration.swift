//
//  Configuration.swift
//  Currency-converter
//
//  Created by Herock Hasan on 19/3/23.
//

import Foundation


enum Environment {
    case development
    case staging
    case release
    
    var baseURL: String {
        switch self {
        case .development: return "https://api.apilayer.com"
        case .staging: return "staging.api.com"
        case .release: return "https://api.apilayer.com"
        }
    }
        
    var authToken: String {
            switch self {
            case .development: return "GkME6HhtPINMy2PPZiB2dPC90jCmxi9b"
            case .staging: return "staging.api.com"
            case .release: return "GkME6HhtPINMy2PPZiB2dPC90jCmxi9b"
            }
        }
}

struct Configuration {
    static var environment: Environment = {
        if let configuration =  Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.contains("Development") {
                return Environment.development
            }
            else if configuration.contains("Staging") {
                return Environment.staging
            }
        }
        return Environment.release
    }()
}
