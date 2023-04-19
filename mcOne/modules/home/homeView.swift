//
//  homeView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

var name = UserData.userName
var photo = UserData.photo
struct HomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bg")
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400)
                        .offset(y: -30)
                    HStack{
                        NavigationLink(destination: AddView()){
                                Image("Button-Tambah")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                        }
                        
                        NavigationLink(destination: MinusView()){
                            ZStack{
                                Image( "Button-Kurang")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                            }
                            
                        }.padding(.leading)
                    }.padding(.top, 260)
                
                
            }.shadow(color: Color("shadow") .opacity(0.6), radius: 2, x: -2, y: 4)
        }.navigationBarBackButtonHidden(true)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


