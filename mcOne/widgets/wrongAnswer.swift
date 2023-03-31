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
            Circle().fill(Color.redForGradient).frame(width: 320)
            Circle().fill(Color.white).opacity(0.2).frame(width: 320)
            Circle().fill(Color.redForGradient).frame(width: 260)
            
            Image("sad")
                .resizable()
                .scaledToFit()
                .frame(width: 220)
            Text("Yah, jawaban kamu belum tepat").padding(.top,200)
                
            
        }
    }
}

struct WrongAnswer_Previews: PreviewProvider {
    static var previews: some View {
        WrongAnswer()
    }
}
