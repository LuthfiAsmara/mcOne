//
//  trueResult.swift
//  mcOne
//
//  Created by Luthfi Asmara on 27/03/23.
//

import SwiftUI

struct ExplanationAddView : View{
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
                            .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                            .overlay(Text("Penjelasan")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0)))
                        ZStack {
                            Color(red: 255/255, green: 236/255, blue: 160/255)
                            VStack(alignment: .leading) {
                                HStack {
                                    VStack{
                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
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
                                                                    .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 1, x: -2, y: 4)
                                                                
                                                                
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
                                                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)

                                    }
                                    VStack{
        //                                Text(" ")
                                        Rectangle()
                                            .foregroundColor(Color(red: 255/255, green: 249/255, blue: 223/255))
                                            .frame(width: 40, height: 40)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            .overlay(
                                            Text("+")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                            )

                                    }
                                    VStack{
        //                                Text("\(num2)")
        //                                    .font(.headline)
        //                                    .fontWeight(.medium)
        //                                    .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))
        //
                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
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
                                                                    .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 1, x: -2, y: 4)
                                                                
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
                                                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)


                                    }
                                    Spacer()
                                }
                                Spacer()

                                HStack(){
                                    Spacer()
                                    VStack(){
        
                                        Rectangle()
                                            .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                                            .frame(width: 40, height: 40)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            .overlay(
                                            Text("=")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                            )

                                    }
                                    VStack{
                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
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
                                                                    .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 1, x: -2, y: 4)
                                                                
                                                                
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
                                                                        .frame(width: 300, height: 120)
                                                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                    }
                                }

                            }
                            .frame(width: 350, height: 250)
                            .offset(x:-70)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 600, height: 280)
                    }
                    Image("teacher")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400, alignment: .trailing)
                        .offset(x: 200, y: 30)
                }
    }
}
struct ExplanationAddView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationAddView(num1: 5, num2: 4, ans: 9)
    }
}
