//
//  splashView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isSplash = false;
    
    var body: some View {
        if isSplash {
            HomeView()
        } else {
            VStack {
                Image("math-logo")
                    .resizable()
                    .frame(
                        width: 200,
                        height: 200,  alignment: .center)
            }.navigationBarBackButtonHidden(true)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+3.0){
                    self.isSplash = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

