//
//  explanationMinus.swift
//  mcOne
//
//  Created by Luthfi Asmara on 05/04/23.
//

import SwiftUI

struct ExplanationMinusView : View{
    var num1: Int
    var num2: Int
    var ans: Int
//    init(title: String, destination: AnyView ) {
//        self.title = title
//        self.destination = destination
//    }
    var body: some View{
        let firstColumns = Int(ceil(sqrt(Double(num1))))
        let firstRows = Int(ceil(Double(num1) / Double(firstColumns)))
        let secondColumns = Int(ceil(sqrt(Double(num2))))
        let secondRows = Int(ceil(Double(num2) / Double(secondColumns))) //
        let thirdColumns = Int(ceil(sqrt(Double(ans))))
        let thirdRows = Int(ceil(Double(ans) / Double(thirdColumns))) //

        ZStack {
            // Set background image
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 8)
            VStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 120, height: 40)
                    .foregroundColor(Color("question-mark"))
                    .overlay(Text("Penjelasan")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color("font")))
                ZStack {
                    Color("explanation")
                    VStack(alignment: .leading) {
                        HStack {
                            VStack{
                                ZStack{
                                    Color("cream")
                                    VStack(spacing: 0) {
                                        ForEach(0..<firstRows, id: \.self) { row in
                                            HStack(spacing: 0) {
                                                ForEach(0..<firstColumns, id: \.self) { column in
                                                    let index = row * firstColumns + column
                                                    if index < num1 {
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
                                }
                                                                .frame(width: 150, height: 100)
                                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)

                            }
                            VStack{
//                                Text(" ")
                                Rectangle()
                                    .foregroundColor(Color("cream"))
                                    .frame(width: 40, height: 40)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                    .overlay(
                                    Text("-")
                                        .font(.headline)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("font"))

                                    )

                            }
                            VStack{
                                ZStack{
                                    Color("cream")
                                    VStack(spacing: 0) {
                                        ForEach(0..<secondRows, id: \.self) { row in
                                            HStack(spacing: 0) {
                                                ForEach(0..<secondColumns, id: \.self) { column in
                                                    let index = row * secondColumns + column
                                                    if index < num2 {
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
                                }
                                                                .frame(width: 150, height: 100)
                                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                            }
                            Spacer()
                        }
                        .offset(x:11)
                        Spacer()

                        HStack(){
                            Spacer()
                            VStack(){
//                                Text(" ")
                                Rectangle()
                                    .foregroundColor(Color("bajuyona"))
                                    .frame(width: 40, height: 40)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                    .overlay(
                                    Text("=")
                                        .font(.headline)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("font"))

                                    )

                            }
                            VStack{
                                ZStack{
                                    Color("bajuyona")
                                    VStack(spacing: 0) {
                                        ForEach(0..<thirdRows, id: \.self) { row in
                                            HStack(spacing: 0) {
                                                ForEach(0..<thirdColumns, id: \.self) { column in
                                                    let index = row * thirdColumns + column
                                                    if index < ans {
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
                                }
                                                                .frame(width: 310, height: 120)
                                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                            }
                        }

                    }
                    .frame(width: 350, height: 250)
                    .offset(x:-10)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 500, height: 280)
            }
            .offset(x:-70)
            Image("teacher")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400, alignment: .trailing)
                .offset(x: 200, y: 30)
        }
    }
}

struct ExplanationMinusView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationMinusView(num1: 5, num2: 2, ans: 3)
    }
}

