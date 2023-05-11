//
//  splashView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isSplash = false
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            Image("Logotung")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .opacity(isSplash ? 0.0 : 1.0)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.isSplash = true
                        }
                    }
                }
            
            if isSplash {
                HomeView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

