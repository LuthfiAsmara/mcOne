//
//  addView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct AddView: View {
    @State var firstNumber = Int.random(in: 1...4)
    @State var secondNumber = Int.random(in: 1...4)
    @State var firstAnswer = 1
    @State var secondAnswer = 1
    @State var isCorrect: Bool = false
    @State var isWrong: Bool = false
 
    
    
    
    
    var body: some View {
        let corectAnswer = firstNumber + secondNumber
        let _option = [firstAnswer, secondAnswer, corectAnswer]
        
        ZStack{
            Image("bg")
            Rectangle().fill(Color.black).opacity(0.2)
            VStack {
                HStack{
                    ForEach(0..<firstNumber, id: \.self) { number in
                        Image("donat").resizable()
                            .frame(width: 50, height: 50)
                    }
                    Text("+")
                    ForEach(0..<secondNumber, id: \.self) { number in
                        Image("donat").resizable()
                            .frame(width: 50, height: 50)
                    }
                    Text("=")
                    Spacer()
                }.padding(.leading, 80)
                
                HStack{
                    
                    if isWrong{
                        ForEach(_option.shuffled(), id: \.self) { a in
                            
                            Button {
                                
                                if a == corectAnswer
                                {
                                    
                                    self.isCorrect = true
                                }else{
                                    self.isWrong = true
                                }
                                
                                
                            } label: {
                                AnswerButton(number: a)
                            }.padding(.trailing, 40)
                        }
                        
                        
                    }
                    else{
                        ForEach(_option, id: \.self) { a in
                            
                            Button {
                                
                                if a == corectAnswer
                                {
                                    
                                    self.isCorrect = true
                                }else{
                                    self.isWrong = true
                                }
                                
                                
                            } label: {
                                AnswerButton(number: a)
                            }.padding(.trailing, 40)
                        }
                    }
                    Spacer()
                }.padding(.leading, 100)
                
            }.navigationBarBackButtonHidden(true)
                .padding()
            
            //            HStack{
            //                Spacer()
            //                Image("teacher")
            //                    .resizable()
            //                    .frame(width: 150, height: 200)
            //                    .padding(.trailing, 20)
            //                    .padding(.top, 200)
            //            }
            if isWrong == true{
                WrongAnswer().onTapGesture {
                    self.isWrong = false
                }
            }
            if isCorrect == true{
                CorrectAnswer().onTapGesture {
                    self.isCorrect = false
                    newQuestion()
                }
            }
           
        }.previewInterfaceOrientation(.landscapeRight)
            .onAppear{
                while firstAnswer == corectAnswer{
                    firstAnswer = Int.random(in: 1...8)}
                while secondAnswer == corectAnswer || firstAnswer == secondAnswer{
                    secondAnswer = Int.random(in: 1...8)
                }
                print(_option)
                
            }
    }
    
    
    func newQuestion() {
        firstNumber = Int.random(in: 1...4)
        secondNumber = Int.random(in: 1...4)
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
