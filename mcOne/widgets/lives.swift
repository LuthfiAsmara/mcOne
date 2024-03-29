//
//  lives.swift
//  mcOne
//
//  Created by Luthfi Asmara on 05/04/23.
//

import SwiftUI

struct LivesView: View{
    var livesCount: Int
    var body: some View{
        HStack{
                ForEach(0..<livesCount, id: \.self) { number in
                    Image("Icecream")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20)
                        .shadow(color: Color("shadow") .opacity(0.6), radius: 2, x: -2, y: 4)
                }
            
            
            
        }
    }
}

struct LivesView_Previews: PreviewProvider {
    static var previews: some View {
        LivesView(livesCount: 3)
    }
}
