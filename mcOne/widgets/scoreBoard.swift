//
//  scoreBoard.swift
//  mcOne
//
//  Created by Luthfi Asmara on 06/04/23.
//

import SwiftUI
struct ScoreBoardview: View{
    @State var score: Int
    var body: some View{
        ZStack{
            Image("bg")
            Rectangle().fill(Color.black).opacity(0.2)
            VStack{
                Text("Skor kamu")
                Text("\(score*20)")
            }
    

        }
    }
}

struct ScoreBoardview_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardview(score: 3)
    }
}
