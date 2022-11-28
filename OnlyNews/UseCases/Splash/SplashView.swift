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
        ZStack {
                        
            Text("Only News")
                .font(.system(size: 45, weight: .bold, design: .monospaced))
                .bold()
                .foregroundColor(.black)
                .offset(y: -250)
                        
            Image("splash")
                .resizable()
                .clipShape(WaterShape())
                .compositingGroup()
                .task {
                    try? await Task.sleep(until: .now + .seconds(1), clock: .continuous)
                    withAnimation {
                        //router.screen = .home
                    }
                }
        }
        .ignoresSafeArea()
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
