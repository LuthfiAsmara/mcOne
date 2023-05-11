//
//  homeView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI
import AVFoundation

var name = UserData.userName
var photo = UserData.photo
struct HomeView: View {
    @State private var shouldShowAddView = false
    @State private var shouldShowMinusView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("bg")
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
                    .offset(y: -30)
                HStack {
                    NavigationLink(destination: AddView(), isActive: $shouldShowAddView) {
                        Image("Button-Tambah")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                    }
                    
                    NavigationLink(destination: MinusView(), isActive: $shouldShowMinusView) {
                        Image("Button-Kurang")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                    }
                    .padding(.leading)
                }
                .padding(.top, 260)
            }
            .shadow(color: Color("shadow").opacity(0.6), radius: 2, x: -2, y: 4)
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            SoundService.instance.background()
        }
        .onChange(of: shouldShowAddView) { newValue in
            if newValue {
                withAnimation {
                    shouldShowAddView = false
                }
            }
        }
        .onChange(of: shouldShowMinusView) { newValue in
            if newValue {
                withAnimation {
                    shouldShowMinusView = false
                }
            }
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


