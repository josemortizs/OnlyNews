//
//  WebView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 23/11/22.
//

import SwiftUI

struct WebView: View {
    
    @EnvironmentObject var router: Router
    
    var url: URLRequest
    
    var body: some View {
        NavigationView {
            
            WebViewWithCoordinator(request: url)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            router.screen = .home
                        } label: {
                            Text("Home", tableName: "Main")
                                .font(.callout)
                                .foregroundColor(.black)
                        }
                    }
                }
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URLRequest(url: URL(string: "https://www.google.com")!))
    }
}
