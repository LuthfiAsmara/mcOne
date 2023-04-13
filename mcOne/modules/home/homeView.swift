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
        NavigationView{
            ZStack{
                Image("bg")
                Image("LOGO TUNG-TUNG")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 400)
                ZStack{
                    VStack(){
                        NavigationLink(destination: AddView()){
                            ZStack{
                                Image( "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 350)
                                    .rotationEffect(.degrees(-40))
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 240)
                                    .rotationEffect(.degrees(-40))
                                Text("Penjumlahan")

                                    .whiteTextB15()
                                    .padding(.bottom, 380)
                                    .rotationEffect(.degrees(-40))

                                NavigationLink(destination: MinusView()){
                                    ZStack{
                                        Image( "minus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 350)
                                            .rotationEffect(.degrees(40))
                                        Image(systemName: "minus")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, 240)
                                            .rotationEffect(.degrees(40))
                                        Text("Pengurangan").whiteTextB15()
                                            .padding(.bottom, 380)
                                            .rotationEffect(.degrees(40))
                                    }

                                }.padding(.leading, 30)
                            }
                        }.padding(.trailing, 30)
                    }
                }.padding(.top, 300)
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


