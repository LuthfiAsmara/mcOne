//
//  answerButton.swift
//  mcOne
//
//  Created by Luthfi Asmara on 30/03/23.
//

import SwiftUI

struct AnswerButton: View {
    var number : Int
    private let items: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    private let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    
    var body: some View {
        LazyVGrid(columns: items, spacing:6) {
            ForEach(0..<number, id: \.self) { number in
                Image("donat")
                    .resizable()
                    .frame(width: 30, height: 30);
            }
            
            
            
        }
        .background(
            Image("biskuit")
                .resizable()
                
                .scaledToFit()
                .frame(width: 250, height: 300)
//                .padding(.top,10)
//                .padding(.bottom, -10)
//                .padding(.leading, -10)
//                .padding(.trailing, -10)
            )
        .frame(width: 150)
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
//        AnswerButton(number: 9)
        AddView()
    }
}
