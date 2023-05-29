//
//  APIHeaders.swift
//  Currency-converter
//
//  Created by Herock Hasan on 14/3/23.
//

import Foundation

enum HTTPHeaderField: String {
    case authentication = "Authoriazation"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
    case apikey = "apikey"
}

enum ContentType: String {
    case json = "application/json"
}


