//
//  Home.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 16/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
