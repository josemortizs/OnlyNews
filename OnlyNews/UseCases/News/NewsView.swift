//
//  NewsView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject private var viewmodel = NewsViewModel(repository: NewsApiRepository())
    
    var body: some View {
        List {
            ForEach(viewmodel.news ?? [], id: \.description) { new in
                Text(new.title ?? "")
                    .padding()
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
