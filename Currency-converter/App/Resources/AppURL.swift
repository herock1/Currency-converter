//
//  APIUrl.swift
//  Currency-converter
//
//  Created by Herock Hasan on 14/3/23.
//

import Foundation

struct AppURL {
    
    struct Currecy {
        static let list = "/exchangerates_data/symbols"
        static let exchangelist = "/exchangerates_data/latest"
    }
    
    struct Other {
        static let list = "/iamothers"
    }
}
