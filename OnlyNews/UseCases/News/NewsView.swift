//
//  NewsView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct NewsView: View {
    
    @EnvironmentObject var router: Router
    @StateObject private var viewmodel = NewsViewModel(repository: NewsApiRepository())
    
    var body: some View {
        List {
            ForEach(viewmodel.news ?? [], id: \.description) { new in
                Button {
                    if let urlString = new.url, let url = URL(string: urlString) {
                        router.screen = .webview(url: URLRequest(url: url))
                    }
                } label: {
                    Text(new.title ?? "")
                        .padding()
                }

            }
        }
        .task {
            await viewmodel.fetchNews()
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
