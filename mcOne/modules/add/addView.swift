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
    @State var isPopup: Bool = false

    
    var body: some View {
        ZStack{
            Image("bg")
            Rectangle().fill(Color.black).opacity(0.2)
            VStack {
                LivesView(livesCount: livesCounts)
                    .frame(width: 200)
                    .padding(.leading, 500)
               QuestionAddWidget(
                firstNumber: $firstNumber,
                secondNumber: $secondNumber)
                AnswerAddWidget(
                    option: $option,
                    isCorrect: $isCorrect,
                    isWrong: $isWrong,
                    correctAnswer: $correctAnswer,
                    questionCount: $questionCount,
                    correctResult: $correctResult,
                    livesCounts: $livesCounts,
                    isPopup: $isPopup)
            }.navigationBarBackButtonHidden(true)
                .padding()
            
            
            if isWrong == true{
                if livesCounts == 0{
                    WrongAnswer()
                }else{
                    WrongAnswer().onTapGesture {
                        self.isWrong = false
                    }
                }
            }
            
            
            if isCorrect == true{
                CorrectAnswer()
            }
            
            
            if isPopup{
                ExplanationMinusView(num1: firstNumber, num2: secondNumber, ans: correctAnswer).onTapGesture {
                    self.questionCount = questionCount+1
                    self.isWrong = false
                    self.isCorrect = false
                    self.livesCounts = 3
                    self.isPopup = false
                    newQuestion()
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

struct QuestionAddWidget: View{
    @Binding var firstNumber: Int
    @Binding var secondNumber: Int
    var body: some View{
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
    }
}

struct AnswerAddWidget: View{
    @Binding var option: Set<Int>
    @Binding var isCorrect: Bool
    @Binding var isWrong: Bool
    @Binding var correctAnswer: Int
    @Binding var questionCount: Int
    @Binding var correctResult: Int
    @Binding var livesCounts: Int
    @Binding var isPopup: Bool
    var body: some View{
        HStack{
            ForEach(option.shuffled(), id: \.self) { a in
                
                Button {
                    
                    if a == correctAnswer
                    {
                        self.isCorrect = true
                        self.correctResult = correctResult+1
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                            self.isPopup = true
                        }
                    }else{
                        self.isWrong = true
                        self.livesCounts = livesCounts-1
                        if livesCounts==0{
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                                self.isPopup = true
                            }
                        }
                    }
                } label: {
                    AnswerButton(number: a)
                }.padding(.trailing, 10)
            }
            Spacer()
        }.padding(.leading, 100)
    }
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
