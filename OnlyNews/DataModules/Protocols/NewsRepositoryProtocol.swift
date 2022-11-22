//
//  NewsRepositoryProtocol.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 22/11/22.
//

import Foundation

protocol NewsRepositoryProtocol {
    func fetchNews() async throws -> [Article]
}
