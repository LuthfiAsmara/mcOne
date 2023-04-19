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
    @State var isScoreBoard: Bool = false

    
    var body: some View {
        NavigationView{
            ZStack{
                Image("bg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 8)
               

                
                HStack{
                    Spacer()
                    VStack {
                        HStack{
                            NavigationLink {
                                HomeView()  } label: {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 30)
                                }
                            Spacer()
                        }
                        Spacer().frame(height: 20)
                        
                        QuestionAddWidget(
                            firstNumber: $firstNumber,
                            secondNumber: $secondNumber)
                        Spacer().frame(height: 20)
                        AnswerAddWidget(
                            option: $option,
                            isCorrect: $isCorrect,
                            isWrong: $isWrong,
                            correctAnswer: $correctAnswer,
                            questionCount: $questionCount,
                            correctResult: $correctResult,
                            livesCounts: $livesCounts,
                            isPopup: $isPopup)
//                        Spacer()
                    }
                    VStack{
                        LivesView(livesCount: livesCounts)
                            .frame(width: 200)
                            .offset(x: 0, y: 15)
                        
                        Image("teacher")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 300, alignment: .bottomTrailing)
                            .offset(y: 40)
                    }
                }
                
                
                
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
                    ExplanationAddView(num1: $firstNumber, num2: $secondNumber, ans: $correctAnswer)
                        .onTapGesture {
                        self.questionCount = questionCount+1
                        self.isWrong = false
                        self.isCorrect = false
                        self.isPopup = false
                        if livesCounts == 0 || questionCount == 5{
                            isScoreBoard.self = true
                        }else{
                            newQuestion()
                        }
                    }
                }
                
                if isScoreBoard{
                    ScoreBoardview(score: correctResult)
                }
                
                
            }.navigationBarBackButtonHidden(true)
                .previewInterfaceOrientation(.landscapeRight)
                .onAppear{
                    //                              SoundService.instance.PlaySound()
                    
                    print(option)
                    plusOperation()
                    option.insert(correctAnswer)
                    insertNumber()
                    print(option)
                    
                }
        }.navigationBarBackButtonHidden(true)
            .onAppear{
                newQuestion()
            }
    }
    
     func generateNumber(){
        firstNumber = Int.random(in: 1...5)
        secondNumber = Int.random(in: 1...4)
    }
    
     func plusOperation(){
        correctAnswer = firstNumber + secondNumber
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
        let firstColumns = Int(ceil(sqrt(Double(firstNumber))))
        let firstRows = Int(ceil(Double(firstNumber) / Double(firstColumns)))
        let secondColumns = Int(ceil(sqrt(Double(secondNumber))))
        let secondRows = Int(ceil(Double(secondNumber) / Double(secondColumns))) //
        HStack{
            ZStack{
                Color("cream")
                HStack{
                    ZStack{
                        VStack(spacing: 0) {
                            ForEach(0..<firstRows, id: \.self) { row in
                                HStack(spacing: 0) {
                                    ForEach(0..<firstColumns, id: \.self) { column in
                                        let index = row * firstColumns + column
                                        if index < firstNumber {
                                            Image("donat")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(3)
                                                .shadow(color: Color("shadow"), radius: 1, x: -2, y: 4)
                                            
                                        } else {
                                            Image("donat")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(3)                               .hidden()
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                    }                      .frame(width: 150)
                    
                    ZStack{
                        Text("+")
                            .font(.custom("Tung2-Regular.ttf", size: 40))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("font"))
                    }
                    .frame(width: 50)
                    
                    ZStack{
                        VStack(spacing: 0) {
                            ForEach(0..<secondRows, id: \.self) { row in
                                HStack(spacing: 0) {
                                    ForEach(0..<secondColumns, id: \.self) { column in
                                        let index = row * secondColumns + column
                                        if index < secondNumber {
                                            Image("donat")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(3)
                                                .shadow(color: Color("shadow"), radius: 1, x: -2, y: 4)
                                            
                                        } else {
                                            Image("donat")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(3)                               .hidden()
                                        }
                                    }
                                }
                            }
                        }
                        .padding()
                    }                      .frame(width: 150)
                    ZStack{
                        Text("=")
                            .font(.custom("Tung2-Regular.ttf", size: 40))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("font"))
                    }
                    .frame(width: 50)
                    
                }
                
            }
            .frame(width: 470, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
            
            Rectangle()
                .foregroundColor(Color("bajuyona"))
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                .overlay(
                    Text("?")
                        .font(.custom("Tung2-Regular.ttf", size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("font"))
                )
                

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
                }
            }
        }
    }
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
