//
//  minusView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct MinusView: View{
    @State var firstNumber = Int.random(in: 1...9)
    @State var secondNumber = Int.random(in: 1...8)
    @State var correctAnswer = 0
    @State var livesCounts = 3
    @State var isCorrect: Bool = false
    @State var isWrong: Bool = false
    @State var option: Set<Int> = []
    @State var questionCount = 0
    @State var correctResult = 0
    @State var isPopup: Bool = false
    
    var body: some View {
        let widthQuestion1 = firstNumber > 5 ? 30.0 : 50.0
        let heigthQuestion1 = firstNumber > 5 ? 30.0 : 50.0
        let widthQuestion2 = secondNumber > 5 ? 30.0 : 50.0
        let heigthQuestion2 = secondNumber > 5 ? 30.0 : 50.0
        let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
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
                        if firstNumber > 5 {
                            LazyHGrid(rows: rows,spacing: 5) {
                                ForEach(0..<firstNumber, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: widthQuestion1, height: heigthQuestion1)
                                }
                            }
                        }else{
                            ForEach(0..<firstNumber, id: \.self) { number in
                                Image("donat").resizable()
                                    .frame(width: widthQuestion1, height: heigthQuestion1)
                            }
                        }
                        
                        
                        Text("-").font(.largeTitle)
                        if secondNumber > 5 {
                            
                            LazyHGrid(rows: rows,spacing: 5) {
                                ForEach(0..<secondNumber, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: widthQuestion2, height: heigthQuestion2)
                                }
                            }
                        }else{
                            ForEach(0..<secondNumber, id: \.self) { number in
                                Image("donat").resizable()
                                    .frame(width: widthQuestion2, height: heigthQuestion2)
                            }
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
                    
                    ForEach(option.shuffled(), id: \.self) { nums in
                        
                        Button {
                            if nums == correctAnswer
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
                            AnswerButton(number: nums)
                        }.padding(.trailing, 10)
                    }
                    Spacer()
                }.padding(.leading, 100)
                
            }.navigationBarBackButtonHidden(true)
                .padding()
            
            
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
//                                SoundService.instance.PlaySound()
                print(option)
                generateNumber()
                minusOperation()
                option.insert(correctAnswer)
                insertNumber()
                print(option)
                
                
            }
    }
    
    func generateNumber(){
        firstNumber = Int.random(in: 1...9)
        secondNumber = Int.random(in: 1...8)
        while firstNumber <= secondNumber {
            firstNumber = Int.random(in: 1...9)
            secondNumber = Int.random(in: 1...8)
        }
    }
    
    func minusOperation(){
        correctAnswer = firstNumber - secondNumber
    }
    
    func insertNumber(){
        while option.count < 3 {
            let randomNumber = Int.random(in: 1...4)
            if randomNumber != 0 && !option.contains(randomNumber){
                option.insert(randomNumber)
            }
        }
    }
    
    func newQuestion() {
        generateNumber()
        minusOperation()
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


struct MinusView_Previews: PreviewProvider {
    static var previews: some View {
        MinusView()
    }
}

