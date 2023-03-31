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
            Circle().fill(Color.greenForGradient).frame(width: 320)
            Circle().fill(Color.white).opacity(0.2).frame(width: 320)
            Circle().fill(Color.greenForGradient).frame(width: 260)
            
            Image("sad")
                .resizable()
                .scaledToFit()
                .frame(width: 220)
            Text("Hore, jawaban kamu benar").padding(.top,200).whiteTextB15()
                
            
        }
    }
}

struct CorrectAnswer_Previews: PreviewProvider {
    static var previews: some View {
        CorrectAnswer()
    }
}

