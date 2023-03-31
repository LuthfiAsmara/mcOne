//
//  bottomNavigation.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct BottomNavigation: View{

    var body: some View{
        HStack(spacing: 80){
            IconNav(title: "Home", destination:AnyView( HomeView()), icon: "school")
            IconNav(title: "Game", destination:AnyView( GameView()), icon: "bag")
            IconNav(title: "Profil", destination:AnyView( ProfilView()), icon: "person")
            
        }
    }
}


struct IconNav: View{
    var title: String
    var icon: String
    var destination: AnyView
    init(title: String, destination: AnyView, icon: String) {
        self.title = title
        self.destination = destination
        self.icon = icon
    }
    
    var body: some View{
        
        NavigationLink(destination: destination){
            VStack{
                Image(icon)
                    .resizable()
                    .frame(
                        width: 20,
                        height: 20,  alignment: .center)
                Text(title).blackTextB15()
                
            }
        }
    }
}

struct BottomNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigation()
    }
}
