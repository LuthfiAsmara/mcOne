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
        NavigationStack{
            ZStack{
                Image("bg")
                Rectangle().fill(Color.black).opacity(0.2)
                VStack{
                    Text("Skor kamu")
                    Text("\(score*20)")
                    Spacer().frame(height: 50)
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image("play-again")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                    }

                    
                    
                }.font(.custom("Tung2-Regular", size: 24))
                
                
            }
        }
    }
}

struct ScoreBoardview_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardview(score: 3)
    }
}
