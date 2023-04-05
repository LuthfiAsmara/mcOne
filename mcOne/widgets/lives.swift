//
//  lives.swift
//  mcOne
//
//  Created by Luthfi Asmara on 05/04/23.
//

import SwiftUI

struct LivesView: View{
    var livesCount: Int
    private let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var body: some View{
        HStack{
            LazyVGrid(columns: rows, spacing:5) {
                ForEach(0..<livesCount, id: \.self) { number in
                    Image("candy")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50)
                }
            }
            
            
        }
    }
}

struct LivesView_Previews: PreviewProvider {
    static var previews: some View {
        LivesView(livesCount: 3)
    }
}
