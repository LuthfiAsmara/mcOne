//
//  correctAnswer.swift
//  mcOne
//
//  Created by Luthfi Asmara on 31/03/23.
//

import SwiftUI
struct CorrectAnswer: View{
    var body: some View{
        ZStack{
            Rectangle().fill(Color.black).opacity(0.2)
                .frame(width: 900, height: 420)
            Circle().fill(Color.greenForGradient).frame(width: 320)
            Circle().fill(Color.white).opacity(0.2).frame(width: 320)
            Circle().fill(Color.greenForGradient).frame(width: 260)
            
            Image("happy")
                .resizable()
                .scaledToFit()
                .frame(width: 230)
                .offset(x:0, y:-20)
            
            Text("Hore, jawaban kamu benar!")
                .offset(x:0, y:60)
                .font(.custom("Tung2-Regular", size: 22))
                .whiteTextB15()
                
                
            
        }
    }
}

struct CorrectAnswer_Previews: PreviewProvider {
    static var previews: some View {
        CorrectAnswer()
    }
}

