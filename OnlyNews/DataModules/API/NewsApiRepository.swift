//
//  NewsApiRepository.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 22/11/22.
//

import Foundation

actor NewsApiRepository: NewsRepositoryProtocol {
    
    func fetchNews() async throws -> [Article] {
        
        guard let url = URL_NEWS_FROM_LANGUAGE else {
            throw URLError.init(.badURL)
        }
        
        let queryItems = [
            URLQueryItem(name: "apiKey", value: "your_api_key"),
            URLQueryItem(name: "q", value: "españa"),
            URLQueryItem(name: "from", value: "2022-11-22"),
            URLQueryItem(name: "sortBy", value: "publishedAt"),

        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.url?.append(queryItems: queryItems)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        print(String(data: data, encoding: .utf8)!)
        
        do {
            let news: News = try JSONDecoder().decode(News.self, from: data)
            if let articles = news.articles, articles.count > 0 {
                return articles
            } else {
                throw URLError.init(.badServerResponse)
            }
        } catch {
            throw URLError.init(.cannotDecodeRawData)
        }
    }
}
