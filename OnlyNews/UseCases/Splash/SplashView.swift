//
//  SplashView.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Image("splash")
            .resizable()
            .ignoresSafeArea()
            .task {
                try? await Task.sleep(until: .now + .seconds(1), clock: .continuous)
                withAnimation {
                    router.screen = .home
                }
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
