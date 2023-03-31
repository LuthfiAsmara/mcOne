//
//  appBar.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct AppBarWidget: View{
    var title: String
    var destination: AnyView
    init(title: String, destination: AnyView ) {
        self.title = title
        self.destination = destination
    }

    var body: some View{
        HStack(){
            NavigationLink(destination: destination){
                Image(systemName: "chevron.left").foregroundColor(Color.black).fontWeight(Font.Weight.bold)
                    
            }
            Text(title).blackTextB20()
                
        }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading).padding(.leading, 20)
            .background(Color.youngGreen)
        
    }
    
}
