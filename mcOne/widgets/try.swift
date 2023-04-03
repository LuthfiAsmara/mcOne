////
////  try.swift
////  mcOne
////
////  Created by Luthfi Asmara on 01/04/23.
////
//
//import SwiftUI
//
//struct TryView: View {
//    @State var firstNumber = Int.random(in: 1...4)
//    @State var secondNumber = Int.random(in: 1...4)
//    @State var correctAnswer = 0
//    @State var isCorrect: Bool = false
//    @State var isWrong: Bool = false
//    @State var option: Set<Int> = []
//    
//    
//    var body: some View {
//        ZStack{
//            Image("bg")
//            Rectangle().fill(Color.black).opacity(0.2)
//            VStack {
//                HStack{
//                    ForEach(0..<firstNumber, id: \.self) { number in
//                        Image("donat").resizable()
//                            .frame(width: 50, height: 50)
//                    }
//                    Text("+")
//                    ForEach(0..<secondNumber, id: \.self) { number in
//                        Image("donat").resizable()
//                            .frame(width: 50, height: 50)
//                    }
//                    Text("=")
//                    Spacer()
//                }.padding(.leading, 80)
//                
//                HStack{
//                    
//                    ForEach(option.shuffled(), id: \.self) { a in
//                        
//                        Button {
//                            
//                            if a == correctAnswer
//                            {
//                                self.isCorrect = true
//                            }else{
//                                self.isWrong = true
//                            }
//                            
//                            
//                        } label: {
//                            AnswerButton(number: a)
//                        }.padding(.trailing, 40)
//                        
//                        
//                    }
//                    Spacer()
//                }.padding(.leading, 100)
//                
//            }.navigationBarBackButtonHidden(true)
//                .padding()
//            
//            //            HStack{
//            //                Spacer()
//            //                Image("teacher")
//            //                    .resizable()
//            //                    .frame(width: 150, height: 200)
//            //                    .padding(.trailing, 20)
//            //                    .padding(.top, 200)
//            //            }
//            if isWrong == true{
//                WrongAnswer().onTapGesture {
//                    self.isWrong = false
//                }
//            }
//            if isCorrect == true{
//                CorrectAnswer().onTapGesture {
//                    self.isCorrect = false
//                    newQuestion()
//                    print(option)
//                }
//            }
//            
//        }.previewInterfaceOrientation(.landscapeRight)
//            .onAppear{
//                
//                print(option)
//                correctAnswer = firstNumber + secondNumber
//                option.insert(correctAnswer)
//                while option.count < 3 {
//                    let randomNumber = Int.random(in: 1...4)
//                    if randomNumber != 0{
//                        option.insert(randomNumber)
//                    }
//                }
//                print(option)
//                
//            }
//    }
//    
//    func newQuestion() {
//        firstNumber = Int.random(in: 1...4)
//        secondNumber = Int.random(in: 1...4)
//        correctAnswer = firstNumber + secondNumber
//        
//        var newOption = Set<Int>()
//        newOption.insert(correctAnswer)
//        while newOption.count < 3 {
//            let randomNumber = Int.random(in: 1...4)
//            if randomNumber != 0 {
//                newOption.insert(randomNumber)
//            }
//        }
//        option = newOption
//        
//        
//    }
//}
//
//struct TryView_Previews: PreviewProvider {
//    static var previews: some View {
//        TryView()
//    }
//}
//
