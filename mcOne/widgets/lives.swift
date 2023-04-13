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
                    Image("Carrot")
                        .resizable()
                        .scaledToFit()
                        .frame(width:30)
                }
            
            
            
        }
    }
}

struct LivesView_Previews: PreviewProvider {
    static var previews: some View {
        LivesView(livesCount: 3)
    }
}
