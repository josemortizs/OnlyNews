//
//  NewsMockRepository.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 29/11/22.
//

import Foundation

actor NewsMockRepository: NewsRepositoryProtocol {
    
    func fetchNews() async throws -> [Article] {
        
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        
        guard let articles: [Article] = StringDecoder.decode(model: Article.self, stringData: ARTICLES_STRING) else {
            throw URLError(.cannotDecodeRawData)
        }
        
        return articles
    }
}
