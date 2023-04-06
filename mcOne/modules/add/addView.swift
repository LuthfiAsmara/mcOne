//
//  addView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct AddView: View {
    @State var firstNumber = Int.random(in: 1...5)
    @State var secondNumber = Int.random(in: 1...4)
    @State var correctAnswer = 0
    @State var livesCounts = 3
    @State var isCorrect: Bool = false
    @State var isWrong: Bool = false
    @State var option: Set<Int> = []
    @State var questionCount = 0
    @State var correctResult = 0
    
    var body: some View {
        ZStack{
            Image("bg")
            Rectangle().fill(Color.black).opacity(0.2)
            VStack {
                LivesView(livesCount: livesCounts)
                    .frame(width: 200)
                    .padding(.leading, 500)
                ZStack{
                    HStack{
                        Spacer().frame(width: 20)
                        ForEach(0..<firstNumber, id: \.self) { number in
                            Image("donat").resizable()
                                .frame(width: 50, height: 50)
                        }
                        Text("+").font(.largeTitle)
                        ForEach(0..<secondNumber, id: \.self) { number in
                            Image("donat").resizable()
                                .frame(width: 50, height: 50)
                        }
                        Text("=").font(.largeTitle)
                        
                        
                        Spacer()
                    }.frame(width: .infinity, height: 120)
                        .background(Color.bgExplanation)
                        .padding(.leading, 80)
                        .padding(.trailing, 110)
                    
                    
                    Image(systemName: "questionmark").resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .background(Rectangle().fill(Color.bgAnswer)
                            .frame(width: 70, height: 90))
                        .padding(.leading, 610)
                    
                }
                HStack{
                    
                    ForEach(option.shuffled(), id: \.self) { a in
                        
                        Button {
                            
                            if a == correctAnswer
                            {
                                self.isCorrect = true
                                self.correctResult = correctResult+1
                            }else{
                                self.isWrong = true
                                self.livesCounts = livesCounts-1

                                
                            }
                        } label: {
                            AnswerButton(number: a)
                        }.padding(.trailing, 10)
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
                    print(option)
                }
            }
            if livesCounts == 0 {
                ExplanationAddView(num1: firstNumber, num2: secondNumber, ans: correctAnswer).onTapGesture {
                    self.questionCount = questionCount+1
                    self.isWrong = false
                    newQuestion()
                    self.livesCounts = 3
                }
            }
            if questionCount == 5{
                ScoreBoardview(score: correctResult)
            }
            
        }.previewInterfaceOrientation(.landscapeRight)
            .onAppear{
                //              SoundService.instance.PlaySound()
                
                print(option)
                plusOperation()
                option.insert(correctAnswer)
                insertNumber()
                print(option)
                
            }
    }
    private func generateNumber(){
        firstNumber = Int.random(in: 1...5)
        secondNumber = Int.random(in: 1...4)
    }
    private func plusOperation(){
        correctAnswer = firstNumber + secondNumber
    }
    private func insertNumber(){
        while option.count < 3 {
            let randomNumber = Int.random(in: 1...4)
            if randomNumber != 0 && !option.contains(randomNumber){
                option.insert(randomNumber)
            }
        }
    }
    
    private func newQuestion() {
        generateNumber()
        plusOperation()
        var newOption = Set<Int>()
        newOption.insert(correctAnswer)
        
        while newOption.count < 3 {
            let randomNumber = Int.random(in: 1...9)
            if randomNumber != 0 && !option.contains(randomNumber){
                newOption.insert(randomNumber)
            }
        }
        option = newOption
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
