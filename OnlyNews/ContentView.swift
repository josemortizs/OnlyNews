//
//  ContentView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var router = Router()
    
    var body: some View {
        
        switch router.screen {
        case .splash:
            SplashView()
                .environmentObject(router)
        case .home:
            HomeView()
                .environmentObject(router)
        case .webview(let url):
            WebView(url: url)
                .environmentObject(router)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
