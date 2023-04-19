//
//  answerButton.swift
//  mcOne
//
//  Created by Luthfi Asmara on 30/03/23.
//

import SwiftUI

struct AnswerButton: View {
    var number : Int
    let image = "donat"
   
    
    var body: some View {
        let columns = Int(ceil(sqrt(Double(number)))) // hitung jumlah kolom berdasarkan input
        let rows = Int(ceil(Double(number) / Double(columns))) // hitung jumlah baris berdasarkan input

        return ZStack {
            Color("bajuyona")
            VStack(spacing: 0) {
                ForEach(0..<rows, id: \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(0..<columns, id: \.self) { column in
                            let index = row * columns + column
                            if index < number {
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(5)
                                    .shadow(color: Color("shadow") .opacity(0.6), radius: 2, x: -2, y: 4)
                            } else {
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(3)
                                    .hidden()


                            }
                        }
                    }
                }
            }
            .padding()
        }
        
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(width: 180, height: 120)
        .shadow(color: Color("shadow") .opacity(0.6), radius: 2, x: -2, y: 4)

    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
//        AnswerButton(number: 9)
        AddView()
    }
}
