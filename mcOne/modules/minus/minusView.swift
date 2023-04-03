//
//  minusView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct MinusView: View{
    //    inisiasi variabel yang diperlukan
    @State var firstNumber = Int.random(in: 1...5) //angka pertama untuk operasi hitung
    @State var secondNumber = Int.random(in: 1...4) //angka kedua untuk operasi hitung
    @State var correctAnswer = 0 //variabel digunakan untuk menyimpan jawaban yang benar
    @State var isCorrect: Bool = false //inisiasi kondisi untuk digunakan menampilkan popup benar
    @State var isWrong: Bool = false //inisiasi kondisi untuk digunakan menampilkan popup salah
    @State var option: Set<Int> = [] //variabel aray untuk menyimpan 3 opsi jawaban
    
    var body: some View {
        ZStack{
            Image("bg")
            Rectangle().fill(Color.black).opacity(0.2)
            VStack {
                ZStack{
                    Rectangle().fill(Color.bgExplanation)
                        .frame(width: 630, height: 100)
                        .padding(.leading, -100)
                        .padding(.bottom, 90)
                    HStack{
                        ForEach(0..<firstNumber, id: \.self) { number in
                            Image("donat").resizable()
                                .frame(width: 50, height: 50)
                        }
                        Text("-")
                        ForEach(0..<secondNumber, id: \.self) { number in
                            Image("donat").resizable()
                                .frame(width: 50, height: 50)
                        }
                        Text("=")
                        Spacer()
                    }.padding(.leading, 80)
                        .padding(.bottom, 90)
                    Image(systemName: "questionmark").resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .background(Rectangle().fill(Color.bgAnswer)
                            .frame(width: 70, height: 90))
                        .padding(.leading, 550)
                        .padding(.bottom, 90)
                    
                }
                HStack{
                    
                    ForEach(option.shuffled(), id: \.self) { a in
                        
                        Button {
                            
                            if a == correctAnswer
                            {
                                self.isCorrect = true
                            }else{
                                self.isWrong = true
                            }
                        } label: {
                            AnswerButton(number: a)
                        }.padding(.trailing, 90)
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
            
        }.previewInterfaceOrientation(.landscapeRight)
            .onAppear{
                //                SoundService.instance.PlaySound()
                print(option)
                while firstNumber <= secondNumber {
                    firstNumber = Int.random(in: 1...9)
                    secondNumber = Int.random(in: 1...8)
                }
                correctAnswer = firstNumber - secondNumber
                option.insert(correctAnswer)
                while option.count < 3 {
                    let randomNumber = Int.random(in: 1...4)
                    if randomNumber != 0 && !option.contains(randomNumber){
                        option.insert(randomNumber)
                    }
                }
                print(option)
                
            }
    }
    
    //    fungsi untuk membuat soal baru
    func newQuestion() {
        firstNumber = Int.random(in: 1...5)
        secondNumber = Int.random(in: 1...4)
        while firstNumber <= secondNumber {
            firstNumber = Int.random(in: 1...9)
            secondNumber = Int.random(in: 1...8)
        }
        correctAnswer = firstNumber - secondNumber
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

