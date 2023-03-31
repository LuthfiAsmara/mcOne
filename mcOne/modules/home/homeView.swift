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
           

            VStack {
                VStack(alignment: .leading){
//                    Hero().padding(.bottom, 30)
                    
                    Text("Hari ini kita akan belajar penjumlahan dan pengurangan.")
                        .padding(.leading, 25)
                        .padding(.top)
                        
                }
                
                
                HStack(spacing: 40){
                    IconHome(title: "Penjumlahan", photo: "add", destination: AnyView(AddView()))
                    IconHome(title: "Pengurangan", photo: "minus", destination: AnyView(MinusView()))
                   
                }.padding(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 0))
                
               
                
                
                
                
                Spacer()
                
//                BottomNavigation()
                
            }
            
        }.navigationBarBackButtonHidden(true)
        
    }
    
    
}

struct Hero: View{
    var body: some View{
        ZStack(alignment: .leading){
            Rectangle().fill(Color.white)
                .frame(width: .infinity, height: 70)
                .cornerRadius(5)
                .padding(.top, 100)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .shadow(color: .gray, radius: 5)
            
            HStack{
                Image(photo)
                    .resizable()
                    .frame(
                        width: 30,
                        height: 30)
                    .background(
                        Circle()
                            .inset(by: 1)
                            .stroke(Color.oldGreen, lineWidth: 2)
                        
                        
                            .frame(width: 50, height: 50)
                        
                    )
                    .padding(.top, 100)
                    .padding(.leading, 30)
                    .padding(.trailing, 20)
                
                Text("Halo, " + name+"!").blackTextM17()
                    .padding(.top, 100)
                
            }.frame(width: .infinity, height: 70)
                .padding(.leading, 20)
            
            
        }.frame(maxWidth: .infinity, maxHeight: 100).background(Color.oldGreen)
        
    }
}

struct IconHome: View{
    var title: String
    var photo: String
    var destination: AnyView
    init(title: String, photo:String, destination: AnyView ) {
        self.title = title
        self.photo = photo
        self.destination = destination
    }
    var body: some View{
        NavigationLink(destination: destination){
            VStack{
                Image(photo)
                    .resizable()
                    .frame(
                        width: 80,
                        height: 80,  alignment: .center)
                Text(title).blackTextB15()
                
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


