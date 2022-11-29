//
//  NewsView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct NewsView: View {
    
    @EnvironmentObject var router: Router
    @StateObject private var viewmodel = NewsViewModel(repository: NewsMockRepository())
    
    var body: some View {
        List {
            ForEach(viewmodel.news ?? [], id: \.description) { new in
                Button {
                    if let urlString = new.url, let url = URL(string: urlString) {
                        router.screen = .webview(url: URLRequest(url: url))
                    }
                } label: {
                    HStack(alignment: .center) {
                        
                        ShapeWithArc()
                            .frame(width: 50, height: 50)
                            .rotationEffect(Angle(degrees: 90))
                            .foregroundColor(.black)
                        
                        VStack(alignment: .leading) {
                            
                            Text("\(new.author ?? "Autor desconocido") - \(new.source?.name ?? "Fuente desconocida")")
                                .lineLimit(1)
                                .font(.footnote)
                                .foregroundColor(.black)
                                .padding(.bottom, 3)
                            
                            Text(new.title ?? "")
                                .font(.caption)
                                .font(Font.system(size: 10))
                                .lineLimit(2)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
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
