//
//  WebViewWithCoordinator.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 23/11/22.
//

import SwiftUI
import UIKit
import WebKit

struct WebViewWithCoordinator: UIViewRepresentable {

    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.uiDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ view: WKWebView, context: UIViewRepresentableContext<WebViewWithCoordinator>) {
        DispatchQueue.main.async {
            view.load(request)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

}

extension WebViewWithCoordinator {
    
    class Coordinator : NSObject, WKUIDelegate {
        
        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            
            if !(navigationAction.targetFrame?.isMainFrame ?? false), let url = navigationAction.request.url {
                UIApplication.shared.open(url)
            }
            return nil
        }
    }
}
