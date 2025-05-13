//
//  SearchResponse.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/11/25.
//

import Foundation

struct SearchResponse: Decodable {
    let meta: Meta
    let documents: [Documents]
}

extension SearchResponse {
    struct Meta: Decodable {
        let isEnd: Bool
        let paggeableCount: Int
        let totalCount: Int
        
        enum CodingKeys: String, CodingKey {
            case isEnd = "is_end"
            case paggeableCount = "pageable_count"
            case totalCount = "total_count"
        }
    }
    
    struct Documents: Decodable {
        let authors: [String]
        let contents: String
        let datetime: String
        let isbn: String
        let price: Int
        let publisher: String
        let salePrice: Int
        let status: String
        let thumbnail: String
        let title: String
        let translators: [String]
        let url: URL
        
        enum CodingKeys: String, CodingKey {
            case authors
            case contents
            case datetime
            case isbn
            case price
            case publisher
            case salePrice = "sale_price"
            case status
            case thumbnail
            case title
            case translators
            case url
        }
    }
}
