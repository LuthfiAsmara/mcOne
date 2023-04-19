//
//  wrongAnswer.swift
//  mcOne
//
//  Created by Luthfi Asmara on 31/03/23.
//

import SwiftUI

struct WrongAnswer: View{
    var body: some View{
        ZStack{
            Rectangle().fill(Color.black).opacity(0.2)
                .frame(width: 900, height: 420)
            Circle().fill(Color.redForGradient).frame(width: 320)
            Circle().fill(Color.white).opacity(0.2).frame(width: 320)
            Circle().fill(Color.redForGradient).frame(width: 260)
            
            Image("sad")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .offset(x:0, y:-10)
            
            Text("Yah, jawaban kamu belum tepat")
                .offset(x:0, y:80)
                .font(.custom("Tung2-Regular", size: 22))
                .whiteTextB15()
            
        }
    }
}

struct WrongAnswer_Previews: PreviewProvider {
    static var previews: some View {
        WrongAnswer()
    }
}
