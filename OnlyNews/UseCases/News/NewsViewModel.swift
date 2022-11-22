//
//  NewsViewModel.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 22/11/22.
//

import Foundation

final class NewsViewModel: ObservableObject {
    
    @Published var news: [Article]?
    
    let repository: NewsRepositoryProtocol
    
    init(repository: NewsRepositoryProtocol) {
        self.repository = repository
    }
    
    public func fetchNews() async {
        do {
            let news = try await repository.fetchNews()
            await MainActor.run(body: {
                self.news = news
            })
        } catch {
            print(error.localizedDescription)
        }
    }
}
