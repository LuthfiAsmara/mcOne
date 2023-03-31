//
//  profileView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct ProfilView: View{
    var body: some View{
        NavigationView{
            
            
            VStack(alignment: .leading){
                AppBarWidget(title: "Profil",
                             destination: AnyView(HomeView()))
                
                
                ZStack(alignment: .leading){
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: .infinity, height: 100)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                        .shadow(color: .gray, radius: 1)
                    HStack{
                        Image(photo)
                            .resizable()
                            .frame(
                                width: 50,
                                height: 50,
                                alignment: .center)
                            .background(
                                Circle()
                                    .inset(by: 1)
                                    .stroke(Color.oldGreen, lineWidth: 2)
                                
                                
                                    .frame(width: 80, height: 80)
                                
                            )
                            .padding(.leading, 60)
                            .padding(.top)
                            .padding(.trailing, 20)
                        
                        VStack(alignment: .leading){
                            Text("Luthfi Asmara")
                            Text("50 Points")
                        }.padding(.top)
                        
                    }
                    
                }
                NavigationLink {
                    SplashView()
                } label: {
                    HStack{
                        Image("logout")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Keluar").blackTextM17()
                    }
                    .padding(.leading)
                }

                
                Spacer()
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}


struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
