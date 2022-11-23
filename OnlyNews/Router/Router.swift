//
//  Router.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

enum Screen {
    case splash
    case home
    case webview(url: URLRequest)
}

class Router: ObservableObject {
    @Published var screen: Screen = .splash
}
