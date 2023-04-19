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
                Rectangle().fill(Color.black).opacity(0.2)
               
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .offset(y: -80)
                    HStack{
                        NavigationLink(destination: AddView()){
                            ZStack{
                                Image( "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 320)
                                
                                
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(Color.white)
                                    .offset(y: -110)
                                
                                Text("Penjumlahan")
                                    .font(.custom("Tung2-Regular", size: 24))
                                    .whiteTextB15()
                                    .offset(y: -170)
                                
                                
                                
                            }
                            
                        }.padding(.trailing, 20)
                            .rotationEffect(.degrees(-8))
                        
                        
                        
                        NavigationLink(destination: MinusView()){
                            ZStack{
                                Image( "minus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 320)
                                
                                Image(systemName: "minus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(Color.white)
                                    .offset(y: -110)
                                
                                Text("Pengurangan")
                                    .font(.custom("Tung2-Regular", size: 24))
                                    .whiteTextB15()
                                    .offset(y: -170)
                                
                                
                            }
                            
                        }.padding(.leading, 15)
                            .rotationEffect(.degrees(8))
                    }.padding(.top, 320)
                    .offset(y:40)
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


