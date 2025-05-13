//
//  NetworkService.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/11/25.
//

import Foundation
import Moya

enum NetworkService {
    case searchBook(keyword: String)
}

extension NetworkService: TargetType {
    
    var baseURL: URL {
        switch self {
        case .searchBook:
            let urlString = "https://dapi.kakao.com"
            guard let url = URL(string: urlString) else { fatalError() }
            return url
        }
    }
    
    var path: String {
        switch self {
        case .searchBook:
            return "/v3/search/book"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .searchBook:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .searchBook(let keyword):
            return .requestParameters(parameters: ["query": keyword],
                                      encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .searchBook:
            guard let apiKey = Bundle.main.infoDictionary?["APIKey"] else {
                fatalError()
            }
            
            return [
                "Content-Type" : "application/json",
                "Authorization" : "KakaoAK \(apiKey)"
            ]
        }
    }
}
